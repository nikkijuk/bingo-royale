// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent()';
}


}

/// @nodoc
class $GameEventCopyWith<$Res>  {
$GameEventCopyWith(GameEvent _, $Res Function(GameEvent) __);
}


/// Adds pattern-matching-related methods to [GameEvent].
extension GameEventPatterns on GameEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Started value)?  started,TResult Function( Finished value)?  finished,TResult Function( Selected value)?  selected,TResult Function( Unselected value)?  unselected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case Finished() when finished != null:
return finished(_that);case Selected() when selected != null:
return selected(_that);case Unselected() when unselected != null:
return unselected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Started value)  started,required TResult Function( Finished value)  finished,required TResult Function( Selected value)  selected,required TResult Function( Unselected value)  unselected,}){
final _that = this;
switch (_that) {
case Started():
return started(_that);case Finished():
return finished(_that);case Selected():
return selected(_that);case Unselected():
return unselected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Started value)?  started,TResult? Function( Finished value)?  finished,TResult? Function( Selected value)?  selected,TResult? Function( Unselected value)?  unselected,}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case Finished() when finished != null:
return finished(_that);case Selected() when selected != null:
return selected(_that);case Unselected() when unselected != null:
return unselected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  finished,TResult Function( String element)?  selected,TResult Function( String element)?  unselected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started();case Finished() when finished != null:
return finished();case Selected() when selected != null:
return selected(_that.element);case Unselected() when unselected != null:
return unselected(_that.element);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  finished,required TResult Function( String element)  selected,required TResult Function( String element)  unselected,}) {final _that = this;
switch (_that) {
case Started():
return started();case Finished():
return finished();case Selected():
return selected(_that.element);case Unselected():
return unselected(_that.element);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  finished,TResult? Function( String element)?  selected,TResult? Function( String element)?  unselected,}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started();case Finished() when finished != null:
return finished();case Selected() when selected != null:
return selected(_that.element);case Unselected() when unselected != null:
return unselected(_that.element);case _:
  return null;

}
}

}

/// @nodoc


class Started implements GameEvent {
  const Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.started()';
}


}




/// @nodoc


class Finished implements GameEvent {
  const Finished();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Finished);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.finished()';
}


}




/// @nodoc


class Selected implements GameEvent {
  const Selected(this.element);
  

 final  String element;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedCopyWith<Selected> get copyWith => _$SelectedCopyWithImpl<Selected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Selected&&(identical(other.element, element) || other.element == element));
}


@override
int get hashCode => Object.hash(runtimeType,element);

@override
String toString() {
  return 'GameEvent.selected(element: $element)';
}


}

/// @nodoc
abstract mixin class $SelectedCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory $SelectedCopyWith(Selected value, $Res Function(Selected) _then) = _$SelectedCopyWithImpl;
@useResult
$Res call({
 String element
});




}
/// @nodoc
class _$SelectedCopyWithImpl<$Res>
    implements $SelectedCopyWith<$Res> {
  _$SelectedCopyWithImpl(this._self, this._then);

  final Selected _self;
  final $Res Function(Selected) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? element = null,}) {
  return _then(Selected(
null == element ? _self.element : element // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Unselected implements GameEvent {
  const Unselected(this.element);
  

 final  String element;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnselectedCopyWith<Unselected> get copyWith => _$UnselectedCopyWithImpl<Unselected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unselected&&(identical(other.element, element) || other.element == element));
}


@override
int get hashCode => Object.hash(runtimeType,element);

@override
String toString() {
  return 'GameEvent.unselected(element: $element)';
}


}

/// @nodoc
abstract mixin class $UnselectedCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory $UnselectedCopyWith(Unselected value, $Res Function(Unselected) _then) = _$UnselectedCopyWithImpl;
@useResult
$Res call({
 String element
});




}
/// @nodoc
class _$UnselectedCopyWithImpl<$Res>
    implements $UnselectedCopyWith<$Res> {
  _$UnselectedCopyWithImpl(this._self, this._then);

  final Unselected _self;
  final $Res Function(Unselected) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? element = null,}) {
  return _then(Unselected(
null == element ? _self.element : element // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
