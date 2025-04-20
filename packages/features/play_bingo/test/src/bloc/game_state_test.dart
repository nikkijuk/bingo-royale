import 'package:flutter_test/flutter_test.dart';
import 'package:play_bingo/src/bloc/game_state.dart';

final labels = [
  'r1c1',
  'r1c2',
  'r1c3',
  'r2c1',
  'r2c2',
  'r2c3',
  'r3c1',
  'r3c2',
  'r3c3',
];// 16

void main() {
  group('Game state tests', () {
    test('Empty state can be instantiated', () {
      expect(const GameState(), isNotNull);
    });

    test('Empty state can be instantiated', () {
      expect(const GameState(), isNotNull);
    });


  });
}
