import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.freezed.dart';

/// A game event.
/// Events are things that have already occurred from the bloc’s perspective.
/// Events are immutable.
@freezed
sealed class GameEvent with _$GameEvent {
  /// The game has started.
  const factory GameEvent.started() = Started;

  /// The game has finished.
  const factory GameEvent.finished() = Finished;

  /// An element has been selected.
  const factory GameEvent.selected(String element) = Selected;

  /// An element has been unselected.
  const factory GameEvent.unselected(String element) = Unselected;
}
