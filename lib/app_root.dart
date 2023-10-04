import 'package:app/home_page.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chess Miniboard',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromRGBO(118, 150, 86, 1),
                brightness: Brightness.light),
            textTheme: const TextTheme(
                bodyMedium: TextStyle(
                    color: Color.fromARGB(255, 28, 28, 28),
                    fontSize: 20,
                    fontWeight: FontWeight.bold))),
        home: const HomePage());
  }
}
