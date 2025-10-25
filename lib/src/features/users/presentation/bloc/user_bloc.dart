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
    try {
      emit(state.copyWith.users(status: Status.loading));

      final result = await getUsers(1);

      await result.fold(
        (failure) async {
          final cached = await getCachedUsers();
          cached.fold(
            (cacheFail) {
              emit(
                state.copyWith.users(
                  status: Status.failure,
                  message: cacheFail.message,
                ),
              );
            },
            (cachedUsers) {
              _allUsers = cachedUsers;
              emit(
                state.copyWith.users(
                  status: Status.success,
                  message: failure.message,
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
    } catch (e, stack) {
      Log.error('User Bloc Error: $e\n$stack');
      emit(state.copyWith.users(status: Status.failure, message: e.toString()));
    }
  }

  Future<void> _onLoadMoreUsers(
    LoadMoreUsersEvent event,
    Emitter<UserState> emit,
  ) async {
    try {
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
    } catch (e, st) {
      Log.error('User Bloc Error: $e\n$st');
      emit(state.copyWith.users(isFetchingMore: false, message: e.toString()));
    }
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
    try {
      final query = event.query.trim().toLowerCase();

      if (query.isEmpty) {
        emit(state.copyWith.users(items: _allUsers));
        return;
      }

      /// remove extra spaces and special chars
      ///
      /// collapse multiple spaces into one
      /// remove special characters
      final normalizedQuery = query
          .replaceAll(RegExp(r'\s+'), ' ')
          .replaceAll(RegExp(r'[^a-z0-9\s]'), '');

      final filtered = _allUsers.where((u) {
        final normalizedName = u.fullName
            .toLowerCase()
            .replaceAll(RegExp(r'\s+'), ' ')
            .replaceAll(RegExp(r'[^a-z0-9\s]'), '');

        return normalizedName.contains(normalizedQuery);
      }).toList();

      emit(state.copyWith.users(items: filtered, hasMore: false));
    } catch (e, st) {
      Log.error('User Bloc Error: $e\n$st');
      emit(state.copyWith.users(message: e.toString()));
    }
  }
}
