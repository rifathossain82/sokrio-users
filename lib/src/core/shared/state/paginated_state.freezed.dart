// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaginatedState<T> {

 Status get status; List<T> get items; int get currentPage; int get total; int get pageSize; bool get isFetchingMore; bool get hasMore; String get message;
/// Create a copy of PaginatedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedStateCopyWith<T, PaginatedState<T>> get copyWith => _$PaginatedStateCopyWithImpl<T, PaginatedState<T>>(this as PaginatedState<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedState<T>&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items),currentPage,total,pageSize,isFetchingMore,hasMore,message);

@override
String toString() {
  return 'PaginatedState<$T>(status: $status, items: $items, currentPage: $currentPage, total: $total, pageSize: $pageSize, isFetchingMore: $isFetchingMore, hasMore: $hasMore, message: $message)';
}


}

/// @nodoc
abstract mixin class $PaginatedStateCopyWith<T,$Res>  {
  factory $PaginatedStateCopyWith(PaginatedState<T> value, $Res Function(PaginatedState<T>) _then) = _$PaginatedStateCopyWithImpl;
@useResult
$Res call({
 Status status, List<T> items, int currentPage, int total, int pageSize, bool isFetchingMore, bool hasMore, String message
});




}
/// @nodoc
class _$PaginatedStateCopyWithImpl<T,$Res>
    implements $PaginatedStateCopyWith<T, $Res> {
  _$PaginatedStateCopyWithImpl(this._self, this._then);

  final PaginatedState<T> _self;
  final $Res Function(PaginatedState<T>) _then;

/// Create a copy of PaginatedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? currentPage = null,Object? total = null,Object? pageSize = null,Object? isFetchingMore = null,Object? hasMore = null,Object? message = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedState].
extension PaginatedStatePatterns<T> on PaginatedState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedState<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedState<T> value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedState<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Status status,  List<T> items,  int currentPage,  int total,  int pageSize,  bool isFetchingMore,  bool hasMore,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedState() when $default != null:
return $default(_that.status,_that.items,_that.currentPage,_that.total,_that.pageSize,_that.isFetchingMore,_that.hasMore,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Status status,  List<T> items,  int currentPage,  int total,  int pageSize,  bool isFetchingMore,  bool hasMore,  String message)  $default,) {final _that = this;
switch (_that) {
case _PaginatedState():
return $default(_that.status,_that.items,_that.currentPage,_that.total,_that.pageSize,_that.isFetchingMore,_that.hasMore,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Status status,  List<T> items,  int currentPage,  int total,  int pageSize,  bool isFetchingMore,  bool hasMore,  String message)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedState() when $default != null:
return $default(_that.status,_that.items,_that.currentPage,_that.total,_that.pageSize,_that.isFetchingMore,_that.hasMore,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _PaginatedState<T> implements PaginatedState<T> {
  const _PaginatedState({this.status = Status.initial, final  List<T> items = const [], this.currentPage = 0, this.total = 0, this.pageSize = 0, this.isFetchingMore = false, this.hasMore = false, this.message = ''}): _items = items;
  

@override@JsonKey() final  Status status;
 final  List<T> _items;
@override@JsonKey() List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  int total;
@override@JsonKey() final  int pageSize;
@override@JsonKey() final  bool isFetchingMore;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  String message;

/// Create a copy of PaginatedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedStateCopyWith<T, _PaginatedState<T>> get copyWith => __$PaginatedStateCopyWithImpl<T, _PaginatedState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedState<T>&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),currentPage,total,pageSize,isFetchingMore,hasMore,message);

@override
String toString() {
  return 'PaginatedState<$T>(status: $status, items: $items, currentPage: $currentPage, total: $total, pageSize: $pageSize, isFetchingMore: $isFetchingMore, hasMore: $hasMore, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PaginatedStateCopyWith<T,$Res> implements $PaginatedStateCopyWith<T, $Res> {
  factory _$PaginatedStateCopyWith(_PaginatedState<T> value, $Res Function(_PaginatedState<T>) _then) = __$PaginatedStateCopyWithImpl;
@override @useResult
$Res call({
 Status status, List<T> items, int currentPage, int total, int pageSize, bool isFetchingMore, bool hasMore, String message
});




}
/// @nodoc
class __$PaginatedStateCopyWithImpl<T,$Res>
    implements _$PaginatedStateCopyWith<T, $Res> {
  __$PaginatedStateCopyWithImpl(this._self, this._then);

  final _PaginatedState<T> _self;
  final $Res Function(_PaginatedState<T>) _then;

/// Create a copy of PaginatedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? currentPage = null,Object? total = null,Object? pageSize = null,Object? isFetchingMore = null,Object? hasMore = null,Object? message = null,}) {
  return _then(_PaginatedState<T>(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
