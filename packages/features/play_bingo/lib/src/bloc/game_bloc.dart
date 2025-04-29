import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:play_bingo/src/bloc/game_event.dart';
import 'package:play_bingo/src/bloc/game_state.dart';

/// GameBloc handles the game logic.
/// Each game has a list of elements that can be selected.
/// Selecting an element removes marks it as selected.
/// Unselecting an element removes element from the selection.
/// Game can be started and finished.
class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc({required List<String> labels, int size = 5})
      : super(GameState(elements: labels, size: size)) {
    on<Started>(_onStarted);
    on<Finished>(_onFinished);
    on<Selected>(_onSelected);
    on<Unselected>(_onUnselected);
  }

  /// Called when game is started.
  FutureOr<void> _onStarted(Started event, Emitter<GameState> emit) {
    emit(state.copyWith(started: DateTime.now()));
  }

  /// Called when game is finished.
  FutureOr<void> _onFinished(Finished event, Emitter<GameState> emit) {
    emit(state.copyWith(finished: DateTime.now()));
  }

  /// Called when element is selected.
  FutureOr<void> _onSelected(Selected event, Emitter<GameState> emit) {
    emit(state.selectElement(event.element));
  }

  /// Called when element is unselected.
  FutureOr<void> _onUnselected(Unselected event, Emitter<GameState> emit) {
    emit(state.unselectElement(event.element));
  }
}
