import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.freezed.dart';

//Events should be named in the past tense
// because events are things that have already occurred
// from the bloc’s perspective.

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.started() = Started;

  const factory GameEvent.selected(String element) = Selected;

  const factory GameEvent.unselected(String element) = Unselected;

  const factory GameEvent.finished() = Finished;
}
