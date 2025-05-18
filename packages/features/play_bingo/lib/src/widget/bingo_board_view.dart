import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play_bingo/src/bloc/game_bloc.dart';
import 'package:play_bingo/src/bloc/game_state.dart';

import 'package:play_bingo/src/widget/bingo_board.dart';

/// Bingo board view widget.
/// Sets size of container for bingo board component.
class BingoBoardView extends StatelessWidget {
  const BingoBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    // BlocBuilder is used to listen to the state changes of the game.
    return BlocBuilder<GameBloc, GameState>(
      // builder is a callback function that is called when the state changes.
      builder: (context, state) {
        // Get the current state of the game.
        final state = context.read<GameBloc>().state;

        // Get the total number of numbers of cells selected by the user,
        // the number of rows, columns, and axes.
        final total = state.found;
        final rows = state.foundRows;
        final columns = state.foundColumns;
        final axes = state.foundAxes;

        // Build the UI for the bingo board view.
        // Ui is composed from a app bar and a body.
        return Scaffold(
          appBar: AppBar(
            title: Text('found $total, rows $rows, cols $columns, axes $axes'),
          ),
          body: Container(
            width: 500,
            height: 500,
            padding: const EdgeInsets.all(10),

            // show BingoBoard widget inside the container.
            child: const BingoBoard(),
          ),
        );
      },
    );
  }
}
