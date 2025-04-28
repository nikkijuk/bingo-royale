import 'package:flutter/material.dart';

/// cell widget that contains inkwell
/// inkwell is used to detect tap
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
    return InkWell(
      onTap: isSelected
          ? () => onUnselect(label)
          : () => onSelect(label),
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
