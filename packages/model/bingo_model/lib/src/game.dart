import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
abstract class Game with _$Game {
  const factory Game({
    @JsonKey(name: 'started') String? started,
    @JsonKey(name: 'finished') String? finished,
    @JsonKey(name: 'width') int? width,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'found') int? found,
    @JsonKey(name: 'selected') List<int>? selected,
    @JsonKey(name: 'elements') List<String>? elements,
  }) = _Game;

  factory Game.fromJson(Map<String, Object?> json) => _$GameFromJson(json);
}
