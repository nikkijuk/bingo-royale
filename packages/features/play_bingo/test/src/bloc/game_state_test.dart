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
    test('State without board can be instantiated', () {
      expect(const GameState(), isNotNull);
    });

    test('state with 3 x 3 board can be instantiated', () {
      expect(GameState(elements: labels, width: 3, height: 3), isNotNull);
    });

    test('state can be selected and unselected', () {
      final state = GameState(elements: labels, width: 3, height: 3);

      expect(state.width, 3);
      expect(state.height, 3);
      expect(state.found, 0);

      final selectedState = state.selectElement('r1c1');

      expect(selectedState.width, 3);
      expect(selectedState.height, 3);
      expect(selectedState.found, 1);

      final unselectedState = selectedState.unselectElement('r1c1');

      expect(unselectedState.width, 3);
      expect(unselectedState.height, 3);
      expect(unselectedState.found, 0);
    });


  });
}
