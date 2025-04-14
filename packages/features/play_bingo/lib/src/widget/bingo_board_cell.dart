import 'package:flutter/cupertino.dart';

class BingoBoardCell {
  BingoBoardCell({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
}
