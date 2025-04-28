import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play_bingo/src/bloc/game_bloc.dart';
import 'package:play_bingo/src/bloc/game_event.dart';
import 'package:play_bingo/src/bloc/game_state.dart';
import 'package:play_bingo/src/widget/bingo_board_cell.dart';

class BingoBoard extends StatelessWidget {
  const BingoBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        final bloc = context.read<GameBloc>();

        return Container(
          width: 500,
          height: 500,
          padding: const EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: state.width,
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
          ),
        );
      },
    );
  }
}
