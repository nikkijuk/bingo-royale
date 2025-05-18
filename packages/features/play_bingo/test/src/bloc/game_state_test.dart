import 'package:flutter_test/flutter_test.dart';
import 'package:play_bingo/src/bloc/game_state.dart';

/// test data for 3 x 3 bingo board
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
];

void main() {
  group('Game state tests', () {
    test('State without board can be instantiated', () {
      expect(const GameState(), isNotNull);
    });

    test('state with 3 x 3 board can be instantiated', () {
      expect(GameState(elements: labels, size: 3), isNotNull);
    });

    test('state can be selected and unselected', () {
      final state = GameState(elements: labels, size: 3);

      expect(state.size, 3);
      expect(state.found, 0);

      final cells = state.cells;
      expect(cells.length, 9);

      final selectedState = state.selectElement('r1c1');

      expect(selectedState.found, 1);

      final unselectedState = selectedState.unselectElement('r1c1');

      expect(unselectedState.found, 0);
    });

    test('state know when row is fully selected', () {
      final state = GameState(elements: labels, size: 3);

      expect(state.size, 3);
      expect(state.found, 0);

      expect(state.foundRows, 0);

      final selectedState1 = state.selectElement('r1c1');
      final selectedState2 = selectedState1.selectElement('r1c2');
      final selectedState3 = selectedState2.selectElement('r1c3');

      expect(selectedState3.foundRows, 1);
    });

    test('state know when column is fully selected', () {
      final state = GameState(elements: labels, size: 3);

      expect(state.size, 3);
      expect(state.found, 0);

      expect(state.foundColumns, 0);

      final selectedState1 = state.selectElement('r1c1');
      final selectedState2 = selectedState1.selectElement('r2c1');
      final selectedState3 = selectedState2.selectElement('r3c1');

      expect(selectedState3.foundColumns, 1);
    });

    test('state know when axis down-up is fully selected', () {
      final state = GameState(elements: labels, size: 3);

      expect(state.size, 3);
      expect(state.found, 0);

      expect(state.foundAxes, 0);

      final selectedState1 = state.selectElement('r3c1');
      final selectedState2 = selectedState1.selectElement('r2c2');
      final selectedState3 = selectedState2.selectElement('r1c3');

      expect(selectedState3.foundAxes, 1);
    });

    test('state know when axis up-down is fully selected', () {
      final state = GameState(elements: labels, size: 3);

      expect(state.size, 3);
      expect(state.found, 0);

      expect(state.foundAxes, 0);

      final selectedState1 = state.selectElement('r1c1');
      final selectedState2 = selectedState1.selectElement('r2c2');
      final selectedState3 = selectedState2.selectElement('r3c3');

      expect(selectedState3.foundAxes, 1);
    });
  });
}
