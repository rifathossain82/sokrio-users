// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent()';
}


}

/// @nodoc
class $UserEventCopyWith<$Res>  {
$UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}


/// Adds pattern-matching-related methods to [UserEvent].
extension UserEventPatterns on UserEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadUsersEvent value)?  loadUsers,TResult Function( RefreshUsersEvent value)?  refreshUsers,TResult Function( LoadMoreUsersEvent value)?  loadMoreUsers,TResult Function( SearchUsersEvent value)?  searchUsers,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadUsersEvent() when loadUsers != null:
return loadUsers(_that);case RefreshUsersEvent() when refreshUsers != null:
return refreshUsers(_that);case LoadMoreUsersEvent() when loadMoreUsers != null:
return loadMoreUsers(_that);case SearchUsersEvent() when searchUsers != null:
return searchUsers(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadUsersEvent value)  loadUsers,required TResult Function( RefreshUsersEvent value)  refreshUsers,required TResult Function( LoadMoreUsersEvent value)  loadMoreUsers,required TResult Function( SearchUsersEvent value)  searchUsers,}){
final _that = this;
switch (_that) {
case LoadUsersEvent():
return loadUsers(_that);case RefreshUsersEvent():
return refreshUsers(_that);case LoadMoreUsersEvent():
return loadMoreUsers(_that);case SearchUsersEvent():
return searchUsers(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadUsersEvent value)?  loadUsers,TResult? Function( RefreshUsersEvent value)?  refreshUsers,TResult? Function( LoadMoreUsersEvent value)?  loadMoreUsers,TResult? Function( SearchUsersEvent value)?  searchUsers,}){
final _that = this;
switch (_that) {
case LoadUsersEvent() when loadUsers != null:
return loadUsers(_that);case RefreshUsersEvent() when refreshUsers != null:
return refreshUsers(_that);case LoadMoreUsersEvent() when loadMoreUsers != null:
return loadMoreUsers(_that);case SearchUsersEvent() when searchUsers != null:
return searchUsers(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadUsers,TResult Function()?  refreshUsers,TResult Function()?  loadMoreUsers,TResult Function( String query)?  searchUsers,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadUsersEvent() when loadUsers != null:
return loadUsers();case RefreshUsersEvent() when refreshUsers != null:
return refreshUsers();case LoadMoreUsersEvent() when loadMoreUsers != null:
return loadMoreUsers();case SearchUsersEvent() when searchUsers != null:
return searchUsers(_that.query);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadUsers,required TResult Function()  refreshUsers,required TResult Function()  loadMoreUsers,required TResult Function( String query)  searchUsers,}) {final _that = this;
switch (_that) {
case LoadUsersEvent():
return loadUsers();case RefreshUsersEvent():
return refreshUsers();case LoadMoreUsersEvent():
return loadMoreUsers();case SearchUsersEvent():
return searchUsers(_that.query);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadUsers,TResult? Function()?  refreshUsers,TResult? Function()?  loadMoreUsers,TResult? Function( String query)?  searchUsers,}) {final _that = this;
switch (_that) {
case LoadUsersEvent() when loadUsers != null:
return loadUsers();case RefreshUsersEvent() when refreshUsers != null:
return refreshUsers();case LoadMoreUsersEvent() when loadMoreUsers != null:
return loadMoreUsers();case SearchUsersEvent() when searchUsers != null:
return searchUsers(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class LoadUsersEvent implements UserEvent {
  const LoadUsersEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadUsersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.loadUsers()';
}


}




/// @nodoc


class RefreshUsersEvent implements UserEvent {
  const RefreshUsersEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshUsersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.refreshUsers()';
}


}




/// @nodoc


class LoadMoreUsersEvent implements UserEvent {
  const LoadMoreUsersEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreUsersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.loadMoreUsers()';
}


}




/// @nodoc


class SearchUsersEvent implements UserEvent {
  const SearchUsersEvent(this.query);
  

 final  String query;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchUsersEventCopyWith<SearchUsersEvent> get copyWith => _$SearchUsersEventCopyWithImpl<SearchUsersEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchUsersEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'UserEvent.searchUsers(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchUsersEventCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $SearchUsersEventCopyWith(SearchUsersEvent value, $Res Function(SearchUsersEvent) _then) = _$SearchUsersEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchUsersEventCopyWithImpl<$Res>
    implements $SearchUsersEventCopyWith<$Res> {
  _$SearchUsersEventCopyWithImpl(this._self, this._then);

  final SearchUsersEvent _self;
  final $Res Function(SearchUsersEvent) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchUsersEvent(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
