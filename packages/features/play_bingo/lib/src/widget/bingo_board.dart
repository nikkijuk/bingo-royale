import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play_bingo/src/bloc/game_bloc.dart';
import 'package:play_bingo/src/bloc/game_event.dart';
import 'package:play_bingo/src/bloc/game_state.dart';
import 'package:play_bingo/src/widget/bingo_board_cell.dart';

/// BingoBoard shows the current state of the game as a grid of cells.
/// The user can select a cell by tapping on it unselected cell.
/// The user can unselect a cell by tapping on selected cell.
class BingoBoard extends StatelessWidget {
  const BingoBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    // Use BlocBuilder to listen to the GameBloc and update the UI accordingly.
    // The builder function is called when the state of the GameBloc changes.
    // GameState is the current state of the GameBloc.
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {

        // Read the GameBloc from the context.
        final bloc = context.read<GameBloc>();

        // Return a GridView widget with the current state of the GameBloc.
        // The GridView is a widget that displays a grid of children.
        return GridView.count(
          crossAxisCount: state.size, // number of cells in a row
          children: state.cells
              .map(
                (cell) => BingoBoardCell(
                  label: cell.label,
                  isSelected: cell.selected,
                  onSelect: (label) => bloc.add(Selected(label)),
                  onUnselect: (label) => bloc.add(Unselected(label)),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
