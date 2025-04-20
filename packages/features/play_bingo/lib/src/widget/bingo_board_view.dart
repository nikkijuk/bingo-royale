import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play_bingo/src/bloc/game_bloc.dart';
import 'package:play_bingo/src/bloc/game_state.dart';

import 'package:play_bingo/src/widget/bingo_board.dart';

class BingoBoardView extends StatelessWidget {
  const BingoBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        final state = context.read<GameBloc>().state;

        final total = state.found;
        final rows = state.foundRows;
        final columns = state.foundColumns;
        final axes = state.foundAxes;

        return Scaffold(
          appBar: AppBar(
            title: Text('found $total, rows $rows, cols $columns, axes $axes'),
          ),
          body: const BingoBoard(),
        );
      },
    );
  }
}
