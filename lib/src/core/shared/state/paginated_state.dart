import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sokrio_users/src/core/core.dart';

part 'paginated_state.freezed.dart';

@freezed
sealed class PaginatedState<T> with _$PaginatedState<T> {
  const factory PaginatedState({
    @Default(Status.initial) Status status,
    @Default([]) List<T> items,
    @Default(0) int currentPage,
    @Default(0) int total,
    @Default(0) int pageSize,
    @Default(false) bool isFetchingMore,
    @Default(false) bool hasMore,
    @Default('') String message,
  }) = _PaginatedState<T>;
}
