import 'package:flutter/material.dart';
import 'package:play_bingo/src/bloc/game_bloc.dart';
import 'package:play_bingo/src/bloc/game_event.dart';
import 'package:play_bingo/src/bloc/game_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class BingoBoard extends StatelessWidget {
  const BingoBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(builder: (context, state) {
      final bloc = context.read<GameBloc>();
      return GridView.count(
        crossAxisCount: state.width,
        children: state
            .getCells()
            .map((cell) => InkWell(
                  onTap: cell.selected
                      ? () => bloc.add(Unselected(cell.label))
                      : () => bloc.add(Selected(cell.label)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //const SizedBox(height: 8),
                      Text(cell.label, textAlign: TextAlign.center),
                    ],
                  ),
                ))
            .toList(),
      );
    });
  }
}
