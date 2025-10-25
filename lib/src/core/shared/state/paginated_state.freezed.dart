// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginatedState<T> {
  Status get status => throw _privateConstructorUsedError;
  List<T> get items => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get isFetchingMore => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  bool get isOffline => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedStateCopyWith<T, PaginatedState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedStateCopyWith<T, $Res> {
  factory $PaginatedStateCopyWith(
          PaginatedState<T> value, $Res Function(PaginatedState<T>) then) =
      _$PaginatedStateCopyWithImpl<T, $Res, PaginatedState<T>>;
  @useResult
  $Res call(
      {Status status,
      List<T> items,
      int currentPage,
      bool isFetchingMore,
      bool hasMore,
      bool isOffline,
      String message});
}

/// @nodoc
class _$PaginatedStateCopyWithImpl<T, $Res, $Val extends PaginatedState<T>>
    implements $PaginatedStateCopyWith<T, $Res> {
  _$PaginatedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
    Object? currentPage = null,
    Object? isFetchingMore = null,
    Object? hasMore = null,
    Object? isOffline = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isFetchingMore: null == isFetchingMore
          ? _value.isFetchingMore
          : isFetchingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isOffline: null == isOffline
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedStateImplCopyWith<T, $Res>
    implements $PaginatedStateCopyWith<T, $Res> {
  factory _$$PaginatedStateImplCopyWith(_$PaginatedStateImpl<T> value,
          $Res Function(_$PaginatedStateImpl<T>) then) =
      __$$PaginatedStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      List<T> items,
      int currentPage,
      bool isFetchingMore,
      bool hasMore,
      bool isOffline,
      String message});
}

/// @nodoc
class __$$PaginatedStateImplCopyWithImpl<T, $Res>
    extends _$PaginatedStateCopyWithImpl<T, $Res, _$PaginatedStateImpl<T>>
    implements _$$PaginatedStateImplCopyWith<T, $Res> {
  __$$PaginatedStateImplCopyWithImpl(_$PaginatedStateImpl<T> _value,
      $Res Function(_$PaginatedStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
    Object? currentPage = null,
    Object? isFetchingMore = null,
    Object? hasMore = null,
    Object? isOffline = null,
    Object? message = null,
  }) {
    return _then(_$PaginatedStateImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isFetchingMore: null == isFetchingMore
          ? _value.isFetchingMore
          : isFetchingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isOffline: null == isOffline
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaginatedStateImpl<T> implements _PaginatedState<T> {
  const _$PaginatedStateImpl(
      {this.status = Status.initial,
      final List<T> items = const [],
      this.currentPage = 0,
      this.isFetchingMore = false,
      this.hasMore = false,
      this.isOffline = false,
      this.message = ''})
      : _items = items;

  @override
  @JsonKey()
  final Status status;
  final List<T> _items;
  @override
  @JsonKey()
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final bool isFetchingMore;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final bool isOffline;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'PaginatedState<$T>(status: $status, items: $items, currentPage: $currentPage, isFetchingMore: $isFetchingMore, hasMore: $hasMore, isOffline: $isOffline, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedStateImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.isFetchingMore, isFetchingMore) ||
                other.isFetchingMore == isFetchingMore) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.isOffline, isOffline) ||
                other.isOffline == isOffline) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_items),
      currentPage,
      isFetchingMore,
      hasMore,
      isOffline,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedStateImplCopyWith<T, _$PaginatedStateImpl<T>> get copyWith =>
      __$$PaginatedStateImplCopyWithImpl<T, _$PaginatedStateImpl<T>>(
          this, _$identity);
}

abstract class _PaginatedState<T> implements PaginatedState<T> {
  const factory _PaginatedState(
      {final Status status,
      final List<T> items,
      final int currentPage,
      final bool isFetchingMore,
      final bool hasMore,
      final bool isOffline,
      final String message}) = _$PaginatedStateImpl<T>;

  @override
  Status get status;
  @override
  List<T> get items;
  @override
  int get currentPage;
  @override
  bool get isFetchingMore;
  @override
  bool get hasMore;
  @override
  bool get isOffline;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedStateImplCopyWith<T, _$PaginatedStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
