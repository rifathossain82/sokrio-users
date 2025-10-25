// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function() refreshUsers,
    required TResult Function() loadMoreUsers,
    required TResult Function(String query) searchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUsers,
    TResult? Function()? refreshUsers,
    TResult? Function()? loadMoreUsers,
    TResult? Function(String query)? searchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function()? refreshUsers,
    TResult Function()? loadMoreUsers,
    TResult Function(String query)? searchUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsersEvent value) loadUsers,
    required TResult Function(RefreshUsersEvent value) refreshUsers,
    required TResult Function(LoadMoreUsersEvent value) loadMoreUsers,
    required TResult Function(SearchUsersEvent value) searchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsersEvent value)? loadUsers,
    TResult? Function(RefreshUsersEvent value)? refreshUsers,
    TResult? Function(LoadMoreUsersEvent value)? loadMoreUsers,
    TResult? Function(SearchUsersEvent value)? searchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsersEvent value)? loadUsers,
    TResult Function(RefreshUsersEvent value)? refreshUsers,
    TResult Function(LoadMoreUsersEvent value)? loadMoreUsers,
    TResult Function(SearchUsersEvent value)? searchUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadUsersEventImplCopyWith<$Res> {
  factory _$$LoadUsersEventImplCopyWith(_$LoadUsersEventImpl value,
          $Res Function(_$LoadUsersEventImpl) then) =
      __$$LoadUsersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUsersEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$LoadUsersEventImpl>
    implements _$$LoadUsersEventImplCopyWith<$Res> {
  __$$LoadUsersEventImplCopyWithImpl(
      _$LoadUsersEventImpl _value, $Res Function(_$LoadUsersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadUsersEventImpl implements LoadUsersEvent {
  const _$LoadUsersEventImpl();

  @override
  String toString() {
    return 'UserEvent.loadUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadUsersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function() refreshUsers,
    required TResult Function() loadMoreUsers,
    required TResult Function(String query) searchUsers,
  }) {
    return loadUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUsers,
    TResult? Function()? refreshUsers,
    TResult? Function()? loadMoreUsers,
    TResult? Function(String query)? searchUsers,
  }) {
    return loadUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function()? refreshUsers,
    TResult Function()? loadMoreUsers,
    TResult Function(String query)? searchUsers,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsersEvent value) loadUsers,
    required TResult Function(RefreshUsersEvent value) refreshUsers,
    required TResult Function(LoadMoreUsersEvent value) loadMoreUsers,
    required TResult Function(SearchUsersEvent value) searchUsers,
  }) {
    return loadUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsersEvent value)? loadUsers,
    TResult? Function(RefreshUsersEvent value)? refreshUsers,
    TResult? Function(LoadMoreUsersEvent value)? loadMoreUsers,
    TResult? Function(SearchUsersEvent value)? searchUsers,
  }) {
    return loadUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsersEvent value)? loadUsers,
    TResult Function(RefreshUsersEvent value)? refreshUsers,
    TResult Function(LoadMoreUsersEvent value)? loadMoreUsers,
    TResult Function(SearchUsersEvent value)? searchUsers,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers(this);
    }
    return orElse();
  }
}

abstract class LoadUsersEvent implements UserEvent {
  const factory LoadUsersEvent() = _$LoadUsersEventImpl;
}

/// @nodoc
abstract class _$$RefreshUsersEventImplCopyWith<$Res> {
  factory _$$RefreshUsersEventImplCopyWith(_$RefreshUsersEventImpl value,
          $Res Function(_$RefreshUsersEventImpl) then) =
      __$$RefreshUsersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshUsersEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$RefreshUsersEventImpl>
    implements _$$RefreshUsersEventImplCopyWith<$Res> {
  __$$RefreshUsersEventImplCopyWithImpl(_$RefreshUsersEventImpl _value,
      $Res Function(_$RefreshUsersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshUsersEventImpl implements RefreshUsersEvent {
  const _$RefreshUsersEventImpl();

  @override
  String toString() {
    return 'UserEvent.refreshUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshUsersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function() refreshUsers,
    required TResult Function() loadMoreUsers,
    required TResult Function(String query) searchUsers,
  }) {
    return refreshUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUsers,
    TResult? Function()? refreshUsers,
    TResult? Function()? loadMoreUsers,
    TResult? Function(String query)? searchUsers,
  }) {
    return refreshUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function()? refreshUsers,
    TResult Function()? loadMoreUsers,
    TResult Function(String query)? searchUsers,
    required TResult orElse(),
  }) {
    if (refreshUsers != null) {
      return refreshUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsersEvent value) loadUsers,
    required TResult Function(RefreshUsersEvent value) refreshUsers,
    required TResult Function(LoadMoreUsersEvent value) loadMoreUsers,
    required TResult Function(SearchUsersEvent value) searchUsers,
  }) {
    return refreshUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsersEvent value)? loadUsers,
    TResult? Function(RefreshUsersEvent value)? refreshUsers,
    TResult? Function(LoadMoreUsersEvent value)? loadMoreUsers,
    TResult? Function(SearchUsersEvent value)? searchUsers,
  }) {
    return refreshUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsersEvent value)? loadUsers,
    TResult Function(RefreshUsersEvent value)? refreshUsers,
    TResult Function(LoadMoreUsersEvent value)? loadMoreUsers,
    TResult Function(SearchUsersEvent value)? searchUsers,
    required TResult orElse(),
  }) {
    if (refreshUsers != null) {
      return refreshUsers(this);
    }
    return orElse();
  }
}

abstract class RefreshUsersEvent implements UserEvent {
  const factory RefreshUsersEvent() = _$RefreshUsersEventImpl;
}

/// @nodoc
abstract class _$$LoadMoreUsersEventImplCopyWith<$Res> {
  factory _$$LoadMoreUsersEventImplCopyWith(_$LoadMoreUsersEventImpl value,
          $Res Function(_$LoadMoreUsersEventImpl) then) =
      __$$LoadMoreUsersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreUsersEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$LoadMoreUsersEventImpl>
    implements _$$LoadMoreUsersEventImplCopyWith<$Res> {
  __$$LoadMoreUsersEventImplCopyWithImpl(_$LoadMoreUsersEventImpl _value,
      $Res Function(_$LoadMoreUsersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreUsersEventImpl implements LoadMoreUsersEvent {
  const _$LoadMoreUsersEventImpl();

  @override
  String toString() {
    return 'UserEvent.loadMoreUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreUsersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function() refreshUsers,
    required TResult Function() loadMoreUsers,
    required TResult Function(String query) searchUsers,
  }) {
    return loadMoreUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUsers,
    TResult? Function()? refreshUsers,
    TResult? Function()? loadMoreUsers,
    TResult? Function(String query)? searchUsers,
  }) {
    return loadMoreUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function()? refreshUsers,
    TResult Function()? loadMoreUsers,
    TResult Function(String query)? searchUsers,
    required TResult orElse(),
  }) {
    if (loadMoreUsers != null) {
      return loadMoreUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsersEvent value) loadUsers,
    required TResult Function(RefreshUsersEvent value) refreshUsers,
    required TResult Function(LoadMoreUsersEvent value) loadMoreUsers,
    required TResult Function(SearchUsersEvent value) searchUsers,
  }) {
    return loadMoreUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsersEvent value)? loadUsers,
    TResult? Function(RefreshUsersEvent value)? refreshUsers,
    TResult? Function(LoadMoreUsersEvent value)? loadMoreUsers,
    TResult? Function(SearchUsersEvent value)? searchUsers,
  }) {
    return loadMoreUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsersEvent value)? loadUsers,
    TResult Function(RefreshUsersEvent value)? refreshUsers,
    TResult Function(LoadMoreUsersEvent value)? loadMoreUsers,
    TResult Function(SearchUsersEvent value)? searchUsers,
    required TResult orElse(),
  }) {
    if (loadMoreUsers != null) {
      return loadMoreUsers(this);
    }
    return orElse();
  }
}

abstract class LoadMoreUsersEvent implements UserEvent {
  const factory LoadMoreUsersEvent() = _$LoadMoreUsersEventImpl;
}

/// @nodoc
abstract class _$$SearchUsersEventImplCopyWith<$Res> {
  factory _$$SearchUsersEventImplCopyWith(_$SearchUsersEventImpl value,
          $Res Function(_$SearchUsersEventImpl) then) =
      __$$SearchUsersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchUsersEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SearchUsersEventImpl>
    implements _$$SearchUsersEventImplCopyWith<$Res> {
  __$$SearchUsersEventImplCopyWithImpl(_$SearchUsersEventImpl _value,
      $Res Function(_$SearchUsersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchUsersEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchUsersEventImpl implements SearchUsersEvent {
  const _$SearchUsersEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'UserEvent.searchUsers(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUsersEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUsersEventImplCopyWith<_$SearchUsersEventImpl> get copyWith =>
      __$$SearchUsersEventImplCopyWithImpl<_$SearchUsersEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function() refreshUsers,
    required TResult Function() loadMoreUsers,
    required TResult Function(String query) searchUsers,
  }) {
    return searchUsers(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUsers,
    TResult? Function()? refreshUsers,
    TResult? Function()? loadMoreUsers,
    TResult? Function(String query)? searchUsers,
  }) {
    return searchUsers?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function()? refreshUsers,
    TResult Function()? loadMoreUsers,
    TResult Function(String query)? searchUsers,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsersEvent value) loadUsers,
    required TResult Function(RefreshUsersEvent value) refreshUsers,
    required TResult Function(LoadMoreUsersEvent value) loadMoreUsers,
    required TResult Function(SearchUsersEvent value) searchUsers,
  }) {
    return searchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsersEvent value)? loadUsers,
    TResult? Function(RefreshUsersEvent value)? refreshUsers,
    TResult? Function(LoadMoreUsersEvent value)? loadMoreUsers,
    TResult? Function(SearchUsersEvent value)? searchUsers,
  }) {
    return searchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsersEvent value)? loadUsers,
    TResult Function(RefreshUsersEvent value)? refreshUsers,
    TResult Function(LoadMoreUsersEvent value)? loadMoreUsers,
    TResult Function(SearchUsersEvent value)? searchUsers,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(this);
    }
    return orElse();
  }
}

abstract class SearchUsersEvent implements UserEvent {
  const factory SearchUsersEvent(final String query) = _$SearchUsersEventImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchUsersEventImplCopyWith<_$SearchUsersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
