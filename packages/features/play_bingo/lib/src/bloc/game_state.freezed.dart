// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameState implements DiagnosticableTreeMixin {
  DateTime? get started; // nullable, set when game is started
  DateTime? get finished; // nullable, set when game is finished
  int get size;
  Set<int> get selected; // set which is by default empty
  List<String> get elements;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameStateCopyWith<GameState> get copyWith =>
      _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);

  /// Serializes this GameState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'GameState'))
      ..add(DiagnosticsProperty('started', started))
      ..add(DiagnosticsProperty('finished', finished))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('selected', selected))
      ..add(DiagnosticsProperty('elements', elements));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameState &&
            (identical(other.started, started) || other.started == started) &&
            (identical(other.finished, finished) || other.finished == finished) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other.selected, selected) &&
            const DeepCollectionEquality().equals(other.elements, elements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, started, finished, size,
      const DeepCollectionEquality().hash(selected), const DeepCollectionEquality().hash(elements));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState(started: $started, finished: $finished, size: $size, selected: $selected, elements: $elements)';
  }
}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) =
      _$GameStateCopyWithImpl;
  @useResult
  $Res call(
      {DateTime? started, DateTime? finished, int size, Set<int> selected, List<String> elements});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? started = freezed,
    Object? finished = freezed,
    Object? size = null,
    Object? selected = null,
    Object? elements = null,
  }) {
    return _then(_self.copyWith(
      started: freezed == started
          ? _self.started
          : started // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finished: freezed == finished
          ? _self.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      selected: null == selected
          ? _self.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      elements: null == elements
          ? _self.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GameState with DiagnosticableTreeMixin implements GameState {
  const _GameState(
      {this.started,
      this.finished,
      this.size = 5,
      final Set<int> selected = const {},
      final List<String> elements = const []})
      : _selected = selected,
        _elements = elements;
  factory _GameState.fromJson(Map<String, dynamic> json) => _$GameStateFromJson(json);

  @override
  final DateTime? started;
// nullable, set when game is started
  @override
  final DateTime? finished;
// nullable, set when game is finished
  @override
  @JsonKey()
  final int size;
  final Set<int> _selected;
  @override
  @JsonKey()
  Set<int> get selected {
    if (_selected is EqualUnmodifiableSetView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selected);
  }

// set which is by default empty
  final List<String> _elements;
// set which is by default empty
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GameStateCopyWith<_GameState> get copyWith =>
      __$GameStateCopyWithImpl<_GameState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GameStateToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'GameState'))
      ..add(DiagnosticsProperty('started', started))
      ..add(DiagnosticsProperty('finished', finished))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('selected', selected))
      ..add(DiagnosticsProperty('elements', elements));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameState &&
            (identical(other.started, started) || other.started == started) &&
            (identical(other.finished, finished) || other.finished == finished) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._selected, _selected) &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      started,
      finished,
      size,
      const DeepCollectionEquality().hash(_selected),
      const DeepCollectionEquality().hash(_elements));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState(started: $started, finished: $finished, size: $size, selected: $selected, elements: $elements)';
  }
}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value, $Res Function(_GameState) _then) =
      __$GameStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DateTime? started, DateTime? finished, int size, Set<int> selected, List<String> elements});
}

/// @nodoc
class __$GameStateCopyWithImpl<$Res> implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? started = freezed,
    Object? finished = freezed,
    Object? size = null,
    Object? selected = null,
    Object? elements = null,
  }) {
    return _then(_GameState(
      started: freezed == started
          ? _self.started
          : started // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finished: freezed == finished
          ? _self.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      selected: null == selected
          ? _self._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      elements: null == elements
          ? _self._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
