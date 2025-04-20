import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:play_bingo/src/bloc/game_bloc.dart';
import 'package:play_bingo/src/bloc/game_event.dart';
import 'package:play_bingo/src/bloc/game_state.dart';

final elements = <String>['a', 'b', 'c'];

void main() {
  group(
    'GameBloc tests',
    () {
      test('initial state is correctly initialized', () {
        expect(GameBloc(labels: elements).state.width, equals(5));
      });

      blocTest<GameBloc, GameState>(
        'emits [GameState] has started set when [Started] happens',
        build: () => GameBloc(labels: elements),
        act: (bloc) => bloc.add(const Started()),
        expect: () => [isA<GameState>()],
        verify: (bloc) => bloc.state.started != null,
      );

      blocTest<GameBloc, GameState>(
        'emits [GameState] has finished set when [Finished] happens',
        build: () => GameBloc(labels: elements),
        act: (bloc) => bloc.add(const Finished()),
        expect: () => [isA<GameState>()],
        verify: (bloc) => bloc.state.finished != null,
      );

      blocTest<GameBloc, GameState>(
        'emits [GameState] has one element selected set when [Selected] happens',
        build: () => GameBloc(labels: elements),
        act: (bloc) => bloc.add(const Selected("a")),
        expect: () => [isA<GameState>()],
        verify: (bloc) => bloc.state.found == 1,
      );

      blocTest<GameBloc, GameState>(
        'emits [GameState] has one element unselected set when [Unselected] happens',
        build: () => GameBloc(labels: elements),
        act: (bloc) => {
          bloc.add(const Selected("a")),
          bloc.add(const Selected("b")),
          bloc.add(const Unselected("a"))
        },
        expect: () => [isA<GameState>(), isA<GameState>(), isA<GameState>()],
        verify: (bloc) => bloc.state.found == 1,
      );
    },
    // if test is failing it can be ignored for a while..
    //skip: true,
  );
}
