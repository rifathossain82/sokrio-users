import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sokrio_users/src/core/widgets/bottom_loader.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/user_item_widget.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/user_list_widget.dart';

void main() {
  late List<User> testUsers;
  late ScrollController scrollController;

  setUp(() {
    testUsers = List.generate(
      3,
      (i) => User(
        id: i,
        email: 'user$i@example.com',
        firstName: 'User',
        lastName: '$i',
        avatar: 'https://example.com/avatar$i.jpg',
      ),
    );

    scrollController = ScrollController();
  });

  Widget buildWidget({required bool hasMore}) {
    return MaterialApp(
      home: Scaffold(
        body: UserListWidget(
          users: testUsers,
          scrollController: scrollController,
          hasMore: hasMore,
        ),
      ),
    );
  }

  group('UserListWidget', () {
    testWidgets('renders all user items', (tester) async {
      await tester.pumpWidget(buildWidget(hasMore: false));

      /// It should render 3 UserItemWidgets when hasMore = false
      expect(find.byType(UserItemWidget), findsNWidgets(3));

      /// No bottom loader when hasMore = false
      expect(find.byType(BottomLoader), findsNothing);
    });

    testWidgets('shows BottomLoader when hasMore is true', (tester) async {
      await tester.pumpWidget(buildWidget(hasMore: true));

      /// Expect 3 users + 1 BottomLoader
      expect(find.byType(UserItemWidget), findsNWidgets(3));
      expect(find.byType(BottomLoader), findsOneWidget);
    });

    testWidgets('displays user info in list items', (tester) async {
      await tester.pumpWidget(buildWidget(hasMore: false));

      /// Check if a user name name and email are shown correctly
      expect(find.text('User 0'), findsOneWidget);
      expect(find.text('user0@example.com'), findsOneWidget);
    });

    testWidgets('supports scrolling', (tester) async {
      await tester.pumpWidget(buildWidget(hasMore: true));

      /// Verify ListView is scrollable
      final listFinder = find.byType(Scrollable);
      await tester.drag(listFinder, const Offset(0, -300));
      await tester.pump();

      expect(find.byType(UserItemWidget), findsWidgets);
    });
  });
}
