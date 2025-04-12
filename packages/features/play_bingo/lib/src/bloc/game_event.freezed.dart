// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GameEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GameEvent()';
  }
}

/// @nodoc
class $GameEventCopyWith<$Res> {
  $GameEventCopyWith(GameEvent _, $Res Function(GameEvent) __);
}

/// @nodoc

class Started implements GameEvent {
  const Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GameEvent.started()';
  }
}

/// @nodoc

class Selected implements GameEvent {
  const Selected(this.element);

  final String element;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectedCopyWith<Selected> get copyWith =>
      _$SelectedCopyWithImpl<Selected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Selected &&
            (identical(other.element, element) || other.element == element));
  }

  @override
  int get hashCode => Object.hash(runtimeType, element);

  @override
  String toString() {
    return 'GameEvent.selected(element: $element)';
  }
}

/// @nodoc
abstract mixin class $SelectedCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory $SelectedCopyWith(Selected value, $Res Function(Selected) _then) =
      _$SelectedCopyWithImpl;
  @useResult
  $Res call({String element});
}

/// @nodoc
class _$SelectedCopyWithImpl<$Res> implements $SelectedCopyWith<$Res> {
  _$SelectedCopyWithImpl(this._self, this._then);

  final Selected _self;
  final $Res Function(Selected) _then;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? element = null,
  }) {
    return _then(Selected(
      null == element
          ? _self.element
          : element // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class Finished implements GameEvent {
  const Finished();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Finished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GameEvent.finished()';
  }
}

// dart format on
