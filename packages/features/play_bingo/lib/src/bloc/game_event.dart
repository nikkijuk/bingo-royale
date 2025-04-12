import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.freezed.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.started() = Started;

  const factory GameEvent.selected(String element) = Selected;

  const factory GameEvent.finished() = Finished;
}
