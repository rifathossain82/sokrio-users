import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sokrio_users/src/core/shared/state/paginated_state.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';

part 'user_state.freezed.dart';

@freezed
sealed class UserState with _$UserState {
  const factory UserState({
    @Default(PaginatedState<User>()) PaginatedState<User> users,
  }) = _UserState;
}
