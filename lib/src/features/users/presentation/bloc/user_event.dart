import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.freezed.dart';

@freezed
sealed class UserEvent with _$UserEvent {
  const factory UserEvent.loadUsers() = LoadUsersEvent;
  const factory UserEvent.refreshUsers() = RefreshUsersEvent;
  const factory UserEvent.loadMoreUsers() = LoadMoreUsersEvent;
  const factory UserEvent.searchUsers(String query) = SearchUsersEvent;
}