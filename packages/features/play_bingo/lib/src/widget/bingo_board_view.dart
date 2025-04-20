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

        final found = state.found;
        final foundRows = state.foundRows;
        final foundColumns = state.foundColumns;

        return Scaffold(
          appBar: AppBar(
            title: Text('found $found, rows $foundRows, columns $foundColumns'),
          ),
          body: const BingoBoard(),
        );
      },
    );
  }
}
