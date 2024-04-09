import 'package:flutter/material.dart';
import 'package:dicey/dice.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(context) => MaterialApp(
        home: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 50, 50, 50),
                Color.fromARGB(255, 133, 133, 133),
                Color.fromARGB(255, 50, 50, 50),
              ],
            ),
          ),
          child: const Center(
            child: Dice(),
          ),
        ),
      );
}
