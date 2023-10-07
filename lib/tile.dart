import 'package:flutter/material.dart';

const _tileSize = 60.0;

class Tile extends StatelessWidget {
  final Color color;
  final Widget? label;

  const Tile({super.key, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: _tileSize,
        height: _tileSize,
        color: color,
        child: label);
  }
}
