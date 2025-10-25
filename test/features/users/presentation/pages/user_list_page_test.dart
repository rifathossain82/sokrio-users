import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sokrio_users/src/core/core.dart';
import 'package:sokrio_users/src/core/shared/state/paginated_state.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';
import 'package:sokrio_users/src/features/users/presentation/bloc/user_bloc.dart';
import 'package:sokrio_users/src/features/users/presentation/bloc/user_event.dart';
import 'package:sokrio_users/src/features/users/presentation/bloc/user_state.dart';
import 'package:sokrio_users/src/features/users/presentation/pages/user_list_page.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/user_list_widget.dart';

import '../../../../mocks/blocs/users/user_bloc_mock.mocks.dart';

void main() {
  /// Initialize mocks
  provideDummy<UserState>(const UserState());
  provideDummy<PaginatedState<User>>(const PaginatedState<User>());

  late MockUserBloc mockUserBloc;
  late List<User> mockUsers;
  late ScrollController scrollController;

  setUp(() {
    mockUserBloc = MockUserBloc();
    scrollController = ScrollController();

    mockUsers = List.generate(
      3,
      (i) => User(
        id: i,
        email: 'user$i@example.com',
        firstName: 'User',
        lastName: '$i',
        avatar: 'https://example.com/avatar$i.jpg',
      ),
    );

    /// Prevent listener errors
    when(mockUserBloc.stream).thenAnswer((_) => const Stream.empty());
  });

  Widget buildTestWidget() {
    return MaterialApp(
      home: BlocProvider<UserBloc>(
        create: (_) => mockUserBloc,
        child: Builder(
          builder: (context) {
            /// Inject scrollController to avoid infinite scroll errors
            return UserListPageTestWrapper(scrollController: scrollController);
          },
        ),
      ),
    );
  }

  group('UserListPage', () {
    testWidgets('shows loading widget when state is loading', (tester) async {
      when(mockUserBloc.state).thenReturn(
        UserState(
          users: PaginatedState<User>(
            status: Status.loading,
            items: [],
            message: '',
            hasMore: false,
            isFetchingMore: false,
            isOffline: false,
          ),
        ),
      );

      await tester.pumpWidget(buildTestWidget());
      await tester.pump(Duration(milliseconds: 100));

      expect(find.byType(KCustomLoader), findsOneWidget);
      verify(mockUserBloc.add(const LoadUsersEvent())).called(1);
    });

    testWidgets('shows user list when users loaded successfully', (
      tester,
    ) async {
      when(mockUserBloc.state).thenReturn(
        UserState(
          users: PaginatedState<User>(
            status: Status.success,
            items: mockUsers,
            hasMore: false,
            message: '',
            isFetchingMore: false,
            isOffline: false,
          ),
        ),
      );

      await tester.pumpWidget(buildTestWidget());
      await tester.pumpAndSettle(Duration(milliseconds: 100));

      /// Verify user list is rendered
      expect(find.byType(UserListWidget), findsOneWidget);
      expect(find.text('User 0'), findsOneWidget);
      expect(find.text('user0@example.com'), findsOneWidget);
    });

    testWidgets('shows no users found when list is empty', (tester) async {
      when(mockUserBloc.state).thenReturn(
        UserState(
          users: PaginatedState<User>(
            status: Status.success,
            items: [],
            hasMore: false,
            message: '',
            isFetchingMore: false,
            isOffline: false,
          ),
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<UserBloc>(
            create: (_) => mockUserBloc,
            child: UserListPageTestWrapper(scrollController: scrollController),
          ),
        ),
      );

      await tester.pump(const Duration(milliseconds: 100));

      /// Verify no users found widget is rendered
      expect(find.byType(FailureWidgetBuilder), findsOneWidget);
      expect(find.text('No users found!'), findsOneWidget);
    });
  });
}

/// Wrapper to inject scrollController for UserListPage
class UserListPageTestWrapper extends StatefulWidget {
  final ScrollController scrollController;

  const UserListPageTestWrapper({super.key, required this.scrollController});

  @override
  State<UserListPageTestWrapper> createState() =>
      _UserListPageTestWrapperState();
}

class _UserListPageTestWrapperState extends State<UserListPageTestWrapper>
    with InfiniteScrollMixin {
  late final UserBloc userBloc;
  late final TextEditingController searchController;
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    userBloc = BlocProvider.of<UserBloc>(context);
    searchController = TextEditingController();

    /// Use injected scrollController to avoid test errors
    scrollController = widget.scrollController;

    initInfiniteScroll(_loadMore);
  }

  void _loadMore() {
    final usersState = userBloc.state.users;
    if (usersState.hasMore && !usersState.isFetchingMore) {
      userBloc.add(const LoadMoreUsersEvent());
    }
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UserListPage();
  }
}
