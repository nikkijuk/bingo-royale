import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play_bingo/src/bloc/game_bloc.dart';
import 'package:play_bingo/src/bloc/game_event.dart';
import 'package:play_bingo/src/bloc/game_state.dart';

const selectedCell = TextStyle(
  color: Colors.red,
);

const freeCell = TextStyle(
  color: Colors.green,
);

class BingoBoard extends StatelessWidget {
  const BingoBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(builder: (context, state) {
      final bloc = context.read<GameBloc>();
      return Container(
        width: 500,
        height: 500,
        padding: const EdgeInsets.all(10),
        child:
        GridView.count(
        crossAxisCount: state.width,
        scrollDirection: Axis.vertical,
        children: state
            .getCells()
            .map((cell) => InkWell(
                  onTap: cell.selected
                      ? () => bloc.add(Unselected(cell.label))
                      : () => bloc.add(Selected(cell.label)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        cell.label,
                        textAlign: TextAlign.center,
                        style: cell.selected ? selectedCell : freeCell,
                      ),
                    ],
                  ),
                ),)
            .toList(),
      )
      );
    },);
  }
}
