import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.freezed.dart';
part 'game_state.g.dart';

// TODO(jnikki): time limit would allow timeboxed bingos
// TODO(jnikki): start time would allow scheduled bingos
// TODO(jnikki): mutating element list would allow realtime changes / additions

@freezed
abstract class GameState with _$GameState {
  const factory GameState({
    DateTime? started, // nullable, set when game is started
    DateTime? finished, // nullable, set when game is finished
    @Default(5) int width,
    @Default(5) int height,
    @Default({}) Set<int> selected, // set which is by default empty
    @Default([]) List<String> elements, // list which is by default empty
  }) = _GameState;

  factory GameState.fromJson(Map<String, Object?> json) =>
      _$GameStateFromJson(json);
}

// extension for convenience
extension GameStateExtension on GameState {
  // getter for number of elements found already
  int get found => selected.length;

  // shared method for finding element ID
  int findElementId(String element) => elements.indexOf(element);

  // is element selected
  bool isSelected(int index) => selected.contains(index);

  // transfer to list of cells
  List<Cell> getCells() => elements
      .map((element) =>
          (label: element, selected: isSelected(findElementId(element))))
      .toList();

  int matchingRows() {
    return List.generate(height, (int row) => row).where((row) => checkRow(row)).length;;;
  }

  // check row, rows start from 0
  bool checkRow(int row) {
    return List.generate(width, (int col) => row*width +  col).every((index) => isSelected(index));
  }

  int matchingColumns() {
    return List.generate(width, (int col) => col).where((col) => checkColumn(col)).length;;;
  }

  // check column
  bool checkColumn(int col) {
    return List.generate(height, (int row) => row*height + col).every((index) => isSelected(index));
  }

  // check axes // upleft-to-rightdown, leftdown-to-rightup

}

typedef Cell = ({String label, bool selected});
