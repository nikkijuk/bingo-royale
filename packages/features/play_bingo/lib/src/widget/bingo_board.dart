import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play_bingo/src/bloc/game_bloc.dart';
import 'package:play_bingo/src/bloc/game_event.dart';
import 'package:play_bingo/src/bloc/game_state.dart';

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
                  (cell) => CellWidget(
                    cell: cell,
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

/// cell widget that contains inkwell
/// inkwell is used to detect tap
class CellWidget extends StatelessWidget {
  const CellWidget({
    required this.cell,
    required this.onSelect,
    required this.onUnselect,
    super.key,
  });

  final Cell cell;

  final PressCell onSelect;
  final PressCell onUnselect;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: cell.selected
          ? () => onUnselect(cell.label)
          : () => onSelect(cell.label),
      child: Container(
        color: cell.selected ? selectedBgColor : freeBgColor,
        alignment: Alignment.center,
        child: Text(
          cell.label,
          textAlign: TextAlign.center,
          style: cell.selected ? selectedCell : freeCell,
        ),
      ),
    );
  }
}

/// Button press handler for cell of bingo board
/// Takes label of cell as parameter
typedef PressCell = void Function(String);

/// Colors for bingo board
const selectedBgColor = Colors.yellow;

/// Colors for bingo board
const freeBgColor = Colors.white;

/// Text style for selected cell
const selectedCell = TextStyle(
  color: Colors.red,
);

/// Text style for free cell
const freeCell = TextStyle(
  color: Colors.green,
);
