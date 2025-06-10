// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameState _$GameStateFromJson(Map<String, dynamic> json) => _GameState(
      started: json['started'] == null ? null : DateTime.parse(json['started'] as String),
      finished: json['finished'] == null ? null : DateTime.parse(json['finished'] as String),
      size: (json['size'] as num?)?.toInt() ?? 5,
      selected:
          (json['selected'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toSet() ?? const {},
      elements: (json['elements'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [],
    );

Map<String, dynamic> _$GameStateToJson(_GameState instance) => <String, dynamic>{
      'started': instance.started?.toIso8601String(),
      'finished': instance.finished?.toIso8601String(),
      'size': instance.size,
      'selected': instance.selected.toList(),
      'elements': instance.elements,
    };
