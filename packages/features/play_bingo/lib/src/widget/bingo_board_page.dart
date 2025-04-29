import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play_bingo/src/bloc/game_bloc.dart';

import 'package:play_bingo/src/widget/bingo_board_view.dart';

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
              return GameBloc(
                labels: [
                  'Flutter',
                  'bingo',
                  'challenge',
                  'is', // 4
                  'a',
                  'structured',
                  'learning',
                  'experiment.', // 8
                  'Get',
                  'ready',
                  'for',
                  'new', // 12
                  'skills.',
                  'Never',
                  'stop',
                  'experimenting.', // 16
                ],
                size: 4,
              );
            },
          ),
        ],
        child: const Center(
          child: BingoBoardView(),
        ),
      ),
    );
  }
}
