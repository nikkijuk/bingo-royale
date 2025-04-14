import 'package:flutter/material.dart';

import 'bingo_board_cell.dart';
import 'bingo_board.dart';

class BingoBoardView extends StatelessWidget {
  const BingoBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Bingo')),
      body: const BingoBoard(),
    );
  }
}
