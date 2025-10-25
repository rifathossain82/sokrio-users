import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sokrio_users/src/features/users/presentation/bloc/user_bloc.dart';
import 'package:sokrio_users/src/core/core.dart';
import 'package:sokrio_users/src/features/users/presentation/bloc/user_event.dart';
import 'package:sokrio_users/src/features/users/presentation/bloc/user_state.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/user_list_widget.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> with InfiniteScrollMixin {
  late final UserBloc userBloc;
  late final TextEditingController searchController;
  bool isSearching = false;

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
    if (isSearching) {
      setState(() {
        isSearching = false;
      });
      context.unFocusKeyboard();
      searchController.clear();
    }
    userBloc.add(const RefreshUsersEvent());
    await userBloc.stream.firstWhere((state) => !state.users.isLoading);
  }

  void _onSearch(String query) {
    userBloc.add(SearchUsersEvent(query));
  }

  void _closeSearch() {
    setState(() {
      isSearching = false;
    });
    context.unFocusKeyboard();
    searchController.clear();
    userBloc.add(const SearchUsersEvent(''));
  }

  void _openSearch() {
    setState(() {
      isSearching = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 2,
        title: isSearching
            ? TextField(
                controller: searchController,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Search users...',
                  border: InputBorder.none,
                ),
                onChanged: _onSearch,
              )
            : const Text('Users'),
        actions: [
          if (isSearching)
            IconButton(icon: const Icon(Icons.clear), onPressed: _closeSearch)
          else
            IconButton(icon: const Icon(Icons.search), onPressed: _openSearch),
        ],
      ),
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
              return FailureWidgetBuilder(
                title: 'No users found!',
                onRetry: () {
                  userBloc.add(const LoadUsersEvent());
                },
              );
            }

            return UserListWidget(
              users: usersState.items,
              scrollController: scrollController,
              hasMore: usersState.hasMore,
            );
          },
        ),
      ),
    );
  }
}
