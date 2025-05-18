import 'package:flutter/material.dart';

/// Bingo board cell renders a single cell of bingo board
/// Call can be made to select or unselect cell
/// Cell knows if it is currently selected or not
class BingoBoardCell extends StatelessWidget {
  const BingoBoardCell({
    required this.label,
    required this.isSelected,
    required this.onSelect,
    required this.onUnselect,
    super.key,
  });

  final String label;
  final bool isSelected;

  final PressCell onSelect;
  final PressCell onUnselect;

  @override
  Widget build(BuildContext context) {
    // cell widget returns inkwell
    // inkwell is used to detect tap
    return InkWell(
      // tap is used to select or unselect cell
      onTap: isSelected ? () => onUnselect(label) : () => onSelect(label),

      // container is used to set background color and render element as text
      child: Container(
        color: isSelected ? selectedBgColor : freeBgColor,
        alignment: Alignment.center,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: isSelected ? selectedCell : freeCell,
        ),
      ),
    );
  }
}

/// Button press handler for cell of bingo board
/// Takes label of cell as parameter
typedef PressCell = void Function(String);

/// Colors for bingo board
const selectedBgColor = Colors.yellow;

/// Colors for bingo board
const freeBgColor = Colors.white;

/// Text style for selected cell
const selectedCell = TextStyle(
  color: Colors.red,
);

/// Text style for free cell
const freeCell = TextStyle(
  color: Colors.green,
);
