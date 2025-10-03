import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.freezed.dart';
part 'game_state.g.dart';

// TODO(jnikki): time limit would allow timeboxed bingos
// TODO(jnikki): start time would allow scheduled bingos
// TODO(jnikki): mutating element list would allow realtime changes / additions

/// Type to describe current game state.
@freezed
abstract class GameState with _$GameState {
  const factory GameState({
    /// Time when game is started
    DateTime? started, // nullable, set when game is started
    /// Time when game is finished
    DateTime? finished, // nullable, set when game is finished
    /// size of the board
    @Default(5) int size,

    /// List of indexes of currently selected elements
    @Default({}) Set<int> selected,

    /// list of elements which can be selected
    @Default([]) List<String> elements,
  }) = _GameState;

  /// create GameState from JSON
  factory GameState.fromJson(Map<String, Object?> json) =>
      _$GameStateFromJson(json);
}

/// GameState extension for convenience
extension GameStateExtension on GameState {
  /// get number of elements selected
  int get found => selected.length;

  /// get list of cells
  List<Cell> get cells => elements
      .map(
        (element) => (
          label: element,
          selected: _isSelected(_findElementId(element)),
        ),
      )
      .toList();

  /// shared method for finding element ID
  int _findElementId(String element) => elements.indexOf(element);

  /// is element selected
  bool _isSelected(int index) => selected.contains(index);

  /// amount of rows which are fully selected
  int get foundRows =>
      List.generate(size, (int row) => row).where(_checkRow).length;

  /// check if all elements in row are selected
  bool _checkRow(int row) {
    return List.generate(
      size,
      (int col) => row * size + col,
    ).every(_isSelected);
  }

  /// amount of columns which are fully selected
  int get foundColumns =>
      List.generate(size, (int col) => col).where(_checkColumn).length;

  /// check if all elements in column are selected
  bool _checkColumn(int col) {
    return List.generate(
      size,
      (int row) => row * size + col,
    ).every(_isSelected);
  }

  /// amount of axes which are fully selected
  int get foundAxes =>
      [_checkDownAxis(), _checkUpAxis()].where((axis) => axis).length;

  /// check up-down axis (right-left)
  bool _checkDownAxis() {
    return List.generate(
      size,
      (int pos) => pos * size + pos,
    ).every(_isSelected);
  }

  /// check down-up axis (right-left)
  bool _checkUpAxis() {
    return List.generate(
      size,
      (int pos) => ((size - pos - 1) * size) + pos,
    ).every(_isSelected);
  }

  /// Create new state with selected element
  GameState selectElement(String element) {
    final elementId = _findElementId(element);
    final newSelection = {elementId, ...selected};

    return copyWith(selected: newSelection);
  }

  /// create new state with unselected element
  GameState unselectElement(String element) {
    final elementId = _findElementId(element);
    final newSelection = {...selected}..remove(elementId);

    return copyWith(selected: newSelection);
  }
}

/// Type to describe attributes of single cell
typedef Cell = ({String label, bool selected});
