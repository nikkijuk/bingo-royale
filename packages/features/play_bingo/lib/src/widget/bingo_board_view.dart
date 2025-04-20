import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play_bingo/src/bloc/game_bloc.dart';
import 'package:play_bingo/src/bloc/game_state.dart';

import 'package:play_bingo/src/widget/bingo_board.dart';

class BingoBoardView extends StatelessWidget {
  const BingoBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(builder: (context, state) {
      final state = context.read<GameBloc>().state;

      return Scaffold(
      appBar: AppBar(title: Text('found ${state.found}, rows ${state.foundRows}, columns ${state.foundColumns} ')),
      body: const BingoBoard(),
    );
  },);
  }
}
