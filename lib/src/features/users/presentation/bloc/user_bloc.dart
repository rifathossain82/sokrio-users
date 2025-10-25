import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';
import 'package:sokrio_users/src/features/users/domain/use_cases/get_cached_users.dart';
import 'package:sokrio_users/src/features/users/domain/use_cases/get_users.dart';

import 'package:sokrio_users/src/core/core.dart';
import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUsers getUsers;
  final GetCachedUsers getCachedUsers;

  List<User> _allUsers = [];

  UserBloc({required this.getUsers, required this.getCachedUsers})
    : super(const UserState()) {
    on<LoadUsersEvent>(_onLoadUsers);
    on<LoadMoreUsersEvent>(_onLoadMoreUsers);
    on<RefreshUsersEvent>(_onRefreshUsers);
    on<SearchUsersEvent>(_onSearchUsers);
  }

  Future<void> _onLoadUsers(
    LoadUsersEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith.users(status: Status.loading));

    final result = await getUsers(1);

    await result.fold(
      (failure) async {
        final cached = await getCachedUsers();
        cached.fold(
          (cacheFail) => emit(
            state.copyWith.users(
              status: Status.failure,
              message: failure.message,
            ),
          ),
          (cachedUsers) {
            _allUsers = cachedUsers;
            emit(
              state.copyWith.users(
                status: Status.success,
                items: cachedUsers,
                currentPage: 1,
                hasMore: false,
                isOffline: true,
              ),
            );
          },
        );
      },
      (users) {
        _allUsers = users;
        emit(
          state.copyWith.users(
            status: Status.success,
            items: users,
            currentPage: 1,
            hasMore: users.length == 10,
            isOffline: false,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreUsers(
    LoadMoreUsersEvent event,
    Emitter<UserState> emit,
  ) async {
    final current = state.users;

    if (current.isFetchingMore || !current.hasMore) return;

    emit(state.copyWith.users(isFetchingMore: true));

    final nextPage = current.currentPage + 1;
    final result = await getUsers(nextPage);

    result.fold(
      (failure) => emit(
        state.copyWith.users(
          isFetchingMore: false,
          hasMore: false,
          message: failure.message,
        ),
      ),
      (newUsers) {
        _allUsers = [..._allUsers, ...newUsers];
        emit(
          state.copyWith.users(
            isFetchingMore: false,
            items: _allUsers,
            currentPage: nextPage,
            hasMore: newUsers.length == 10,
          ),
        );
      },
    );
  }

  Future<void> _onRefreshUsers(
    RefreshUsersEvent event,
    Emitter<UserState> emit,
  ) async {
    /// Reuse the same logic as LoadUsersEvent
    add(LoadUsersEvent());
  }

  Future<void> _onSearchUsers(
    SearchUsersEvent event,
    Emitter<UserState> emit,
  ) async {
    if (event.query.isEmpty) {
      emit(state.copyWith.users(items: _allUsers));
    } else {
      final filtered = _allUsers
          .where(
            (u) => u.fullName.toLowerCase().contains(event.query.toLowerCase()),
          )
          .toList();
      emit(state.copyWith.users(items: filtered, hasMore: false));
    }
  }
}
