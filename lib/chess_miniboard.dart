import 'package:flutter/material.dart';

class ChessMiniboard extends StatelessWidget {
  final Color _lightColor = const Color.fromRGBO(238, 238, 210, 1);
  final Color _darkColor = const Color.fromRGBO(118, 150, 86, 1);
  final double _tileSize = 60.0;
  final int size;

  const ChessMiniboard({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: (2 <= size) && (size <= 5)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildLayouts(_buildRow),
            )
          : const Align(
              alignment: Alignment.center,
              child: Text('Side must be from <2,5>')),
    );
  }

  List<Widget> _buildLayouts(Widget Function(int) buildLayout) =>
      [for (int i = 0; i < size; i++) buildLayout(i)];

  Widget _buildRow(int row) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildLayouts((col) => _buildTile(row, col)));
  }

  Widget _buildTile(int row, int col) {
    return Container(
        alignment: Alignment.center,
        width: _tileSize,
        height: _tileSize,
        color: (row + col) % 2 == 0 ? _lightColor : _darkColor,
        child: (row == size - 1 || col == 0) ? displayText(row, col) : null);
  }

  Widget displayText(int row, int col) {
    String display = '';
    if (row == size - 1) {
      display += String.fromCharCode(65 + col);
    }
    if (col == 0) {
      display += '${row + 1}';
    }
    return Text(display);
  }
}
