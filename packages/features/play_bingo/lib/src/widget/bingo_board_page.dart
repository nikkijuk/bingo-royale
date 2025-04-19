import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play_bingo/src/bloc/game_bloc.dart';

import 'bingo_board_cell.dart';
import 'bingo_board_view.dart';

class BingoBoardPage extends StatelessWidget {
  const BingoBoardPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Bingo Challenge'),
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider<GameBloc>(
              create: (_) {
                return GameBloc([
                  "flutter",
                  "bingo",
                  "challenge",
                  "is",
                  "a",
                  "structured",
                  "learning",
                  "experiment"
                ]);
              },
            ),
          ],
          child: const Center(
            child: BingoBoardView(),
          ),
        ));
  }
}
