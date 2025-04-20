// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:play_bingo/src/bloc/game_event.dart';
import 'package:play_bingo/src/bloc/game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc({required List<String> labels, int width = 5, int height = 5})
      : super(GameState(height: height, width: width, elements: labels)) {
    on<Started>(_onStarted);
    on<Finished>(_onFinished);
    on<Selected>(_onSelected);
    on<Unselected>(_onUnselected);
  }

  FutureOr<void> _onStarted(Started event, Emitter<GameState> emit) {
    emit(state.copyWith(started: DateTime.now()));
  }

  FutureOr<void> _onFinished(Finished event, Emitter<GameState> emit) {
    emit(state.copyWith(finished: DateTime.now()));
  }

  FutureOr<void> _onSelected(Selected event, Emitter<GameState> emit) {
    emit(state.selectElement(event.element));

    final cols = state.foundColumns;
    final rows = state.foundRows;
    print('cols: $cols, rows: $rows');

  }

  FutureOr<void> _onUnselected(Unselected event, Emitter<GameState> emit) {
    emit(state.unselectElement(event.element));

    final cols = state.foundColumns;
    final rows = state.foundRows;
    print('cols: $cols, rows: $rows');

  }
}
