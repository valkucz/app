import 'package:flutter/material.dart';
import 'package:app/tile.dart';

const _lightColor = Color.fromRGBO(238, 238, 210, 1);
const _darkColor = Color.fromRGBO(118, 150, 86, 1);
const _minSize = 2;
const _maxSize = 5;

class ChessMiniboard extends StatelessWidget {
  final int size;

  const ChessMiniboard({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (_minSize <= size) && (size <= _maxSize)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildLayouts(_buildRow),
            )
          : const Center(child: Text('Side must be from <2,5>')),
    );
  }

  List<Widget> _buildLayouts(Widget Function(int) buildLayout) =>
      [for (int i = 0; i < size; i++) buildLayout(i)];

  Widget _buildRow(int row) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildLayouts((col) => Tile(
          color: (row + col) % 2 == 0 ? _lightColor : _darkColor,
          label: _displayText(row, col))));

  Widget? _displayText(int row, int col) {
    String display = '';
    if (row == size - 1) {
      display += String.fromCharCode(65 + col);
    }
    if (col == 0) {
      display += '${row + 1}';
    }
    return display == '' ? null : Text(display);
  }
}
