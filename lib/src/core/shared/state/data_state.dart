import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sokrio_users/src/core/enums/status_enum.dart';

part 'data_state.freezed.dart';

@freezed
sealed class DataState<T> with _$DataState<T> {
  const factory DataState({
    @Default(Status.initial) Status status,
    T? data,
    @Default('') String message,
  }) = _DataState<T>;
}
