import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sokrio_users/src/core/widgets/offline_mode_banner.dart';
import 'package:sokrio_users/src/features/users/presentation/bloc/user_bloc.dart';
import 'package:sokrio_users/src/core/core.dart';
import 'package:sokrio_users/src/features/users/presentation/bloc/user_event.dart';
import 'package:sokrio_users/src/features/users/presentation/bloc/user_state.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/user_list_widget.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/user_search_field.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> with InfiniteScrollMixin {
  late final UserBloc userBloc;
  late final TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    userBloc = BlocProvider.of<UserBloc>(context)..add(const LoadUsersEvent());
    searchController = TextEditingController();

    initInfiniteScroll(_loadMore);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _loadMore() {
    final usersState = userBloc.state.users;
    if (usersState.hasMore && !usersState.isFetchingMore) {
      userBloc.add(const LoadMoreUsersEvent());
    }
  }

  Future<void> _onRefresh() async {
    userBloc.add(const RefreshUsersEvent());
    await userBloc.stream.firstWhere((state) => !state.users.isLoading);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: CustomRefreshIndicator(
        onRefresh: _onRefresh,
        child: BlocConsumer<UserBloc, UserState>(
          listenWhen: (previous, current) =>
              current.users.shouldShowErrorMessage,
          listener: (context, state) {
            if (state.users.message.isNotEmpty) {
              SnackBarService.show(
                message: state.users.message,
                type: SnackBarType.error,
              );
            }
          },
          builder: (context, state) {
            final usersState = state.users;

            if (usersState.isLoading) {
              return const KCustomLoader();
            }

            if (usersState.isEmpty) {
              return const FailureWidgetBuilder(title: 'No users found!');
            }

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: UserSearchField(
                    controller: searchController,
                    hintText: 'Search users...',
                    onChanged: (value) => userBloc.add(SearchUsersEvent(value)),
                    onClear: () => userBloc.add(const SearchUsersEvent('')),
                  ),
                ),
                if (usersState.isOffline) const OfflineModeBanner(),
                Expanded(
                  child: UserListWidget(
                    users: usersState.items,
                    scrollController: scrollController,
                    hasMore: usersState.hasMore,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
