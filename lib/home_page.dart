import 'package:app/chess_miniboard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Chess Miniboard')),
        body: const ChessMiniboard(size: 4));
  }
}
