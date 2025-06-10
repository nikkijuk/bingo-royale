// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Game implements DiagnosticableTreeMixin {
  String? get started;
  String? get finished;
  int? get width;
  int? get height;
  int? get found;
  List<int>? get selected;
  List<String>? get elements;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameCopyWith<Game> get copyWith =>
      _$GameCopyWithImpl<Game>(this as Game, _$identity);

  /// Serializes this Game to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Game'))
      ..add(DiagnosticsProperty('started', started))
      ..add(DiagnosticsProperty('finished', finished))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('found', found))
      ..add(DiagnosticsProperty('selected', selected))
      ..add(DiagnosticsProperty('elements', elements));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Game &&
            (identical(other.started, started) || other.started == started) &&
            (identical(other.finished, finished) ||
                other.finished == finished) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.found, found) || other.found == found) &&
            const DeepCollectionEquality().equals(other.selected, selected) &&
            const DeepCollectionEquality().equals(other.elements, elements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      started,
      finished,
      width,
      height,
      found,
      const DeepCollectionEquality().hash(selected),
      const DeepCollectionEquality().hash(elements));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Game(started: $started, finished: $finished, width: $width, height: $height, found: $found, selected: $selected, elements: $elements)';
  }
}

/// @nodoc
abstract mixin class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) _then) =
      _$GameCopyWithImpl;
  @useResult
  $Res call(
      {String? started,
      String? finished,
      int? width,
      int? height,
      int? found,
      List<int>? selected,
      List<String>? elements});
}

/// @nodoc
class _$GameCopyWithImpl<$Res> implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._self, this._then);

  final Game _self;
  final $Res Function(Game) _then;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? started = freezed,
    Object? finished = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? found = freezed,
    Object? selected = freezed,
    Object? elements = freezed,
  }) {
    return _then(_self.copyWith(
      started: freezed == started
          ? _self.started
          : started // ignore: cast_nullable_to_non_nullable
              as String?,
      finished: freezed == finished
          ? _self.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      found: freezed == found
          ? _self.found
          : found // ignore: cast_nullable_to_non_nullable
              as int?,
      selected: freezed == selected
          ? _self.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      elements: freezed == elements
          ? _self.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Game with DiagnosticableTreeMixin implements Game {
  const _Game(
      {this.started,
      this.finished,
      this.width,
      this.height,
      this.found,
      final List<int>? selected,
      final List<String>? elements})
      : _selected = selected,
        _elements = elements;
  factory _Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  @override
  final String? started;
  @override
  final String? finished;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final int? found;
  final List<int>? _selected;
  @override
  List<int>? get selected {
    final value = _selected;
    if (value == null) return null;
    if (_selected is EqualUnmodifiableListView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _elements;
  @override
  List<String>? get elements {
    final value = _elements;
    if (value == null) return null;
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GameCopyWith<_Game> get copyWith =>
      __$GameCopyWithImpl<_Game>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GameToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Game'))
      ..add(DiagnosticsProperty('started', started))
      ..add(DiagnosticsProperty('finished', finished))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('found', found))
      ..add(DiagnosticsProperty('selected', selected))
      ..add(DiagnosticsProperty('elements', elements));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Game &&
            (identical(other.started, started) || other.started == started) &&
            (identical(other.finished, finished) ||
                other.finished == finished) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.found, found) || other.found == found) &&
            const DeepCollectionEquality().equals(other._selected, _selected) &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      started,
      finished,
      width,
      height,
      found,
      const DeepCollectionEquality().hash(_selected),
      const DeepCollectionEquality().hash(_elements));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Game(started: $started, finished: $finished, width: $width, height: $height, found: $found, selected: $selected, elements: $elements)';
  }
}

/// @nodoc
abstract mixin class _$GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$GameCopyWith(_Game value, $Res Function(_Game) _then) =
      __$GameCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? started,
      String? finished,
      int? width,
      int? height,
      int? found,
      List<int>? selected,
      List<String>? elements});
}

/// @nodoc
class __$GameCopyWithImpl<$Res> implements _$GameCopyWith<$Res> {
  __$GameCopyWithImpl(this._self, this._then);

  final _Game _self;
  final $Res Function(_Game) _then;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? started = freezed,
    Object? finished = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? found = freezed,
    Object? selected = freezed,
    Object? elements = freezed,
  }) {
    return _then(_Game(
      started: freezed == started
          ? _self.started
          : started // ignore: cast_nullable_to_non_nullable
              as String?,
      finished: freezed == finished
          ? _self.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      found: freezed == found
          ? _self.found
          : found // ignore: cast_nullable_to_non_nullable
              as int?,
      selected: freezed == selected
          ? _self._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      elements: freezed == elements
          ? _self._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
