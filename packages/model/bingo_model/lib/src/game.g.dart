// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Game _$GameFromJson(Map<String, dynamic> json) => _Game(
  started: json['started'] as String?,
  finished: json['finished'] as String?,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  found: (json['found'] as num?)?.toInt(),
  selected: (json['selected'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  elements: (json['elements'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$GameToJson(_Game instance) => <String, dynamic>{
  'started': instance.started,
  'finished': instance.finished,
  'width': instance.width,
  'height': instance.height,
  'found': instance.found,
  'selected': instance.selected,
  'elements': instance.elements,
};
