// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataState<T> {
  Status get status => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataStateCopyWith<T, DataState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<T, $Res> {
  factory $DataStateCopyWith(
          DataState<T> value, $Res Function(DataState<T>) then) =
      _$DataStateCopyWithImpl<T, $Res, DataState<T>>;
  @useResult
  $Res call({Status status, T? data, String message});
}

/// @nodoc
class _$DataStateCopyWithImpl<T, $Res, $Val extends DataState<T>>
    implements $DataStateCopyWith<T, $Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataStateImplCopyWith<T, $Res>
    implements $DataStateCopyWith<T, $Res> {
  factory _$$DataStateImplCopyWith(
          _$DataStateImpl<T> value, $Res Function(_$DataStateImpl<T>) then) =
      __$$DataStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Status status, T? data, String message});
}

/// @nodoc
class __$$DataStateImplCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res, _$DataStateImpl<T>>
    implements _$$DataStateImplCopyWith<T, $Res> {
  __$$DataStateImplCopyWithImpl(
      _$DataStateImpl<T> _value, $Res Function(_$DataStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_$DataStateImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DataStateImpl<T> implements _DataState<T> {
  const _$DataStateImpl(
      {this.status = Status.initial, this.data, this.message = ''});

  @override
  @JsonKey()
  final Status status;
  @override
  final T? data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DataState<$T>(status: $status, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStateImplCopyWith<T, _$DataStateImpl<T>> get copyWith =>
      __$$DataStateImplCopyWithImpl<T, _$DataStateImpl<T>>(this, _$identity);
}

abstract class _DataState<T> implements DataState<T> {
  const factory _DataState(
      {final Status status,
      final T? data,
      final String message}) = _$DataStateImpl<T>;

  @override
  Status get status;
  @override
  T? get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$DataStateImplCopyWith<T, _$DataStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
