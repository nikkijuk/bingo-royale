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
        expect(GameBloc(elements).state.width, equals(5));
      });

      blocTest<GameBloc, GameState>(
        'emits [GameState] has started set when [Started] happens}',
        build: () => GameBloc(elements),
        act: (bloc) => bloc.add(const Started()),
        expect: () => [isA<GameState>()],
        verify: (bloc) => bloc.state.started != null,
      );
    },
    // if test is failing it can be ignored for a while..
    //skip: true,
  );
}
