import 'package:flutter/material.dart';
import 'dart:math';

var diceRoll = 1;
final random = Random();

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$diceRoll.png',
            width: 200,
          ),
          const SizedBox(height: 50),
          TextButton(
            style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.black),
              overlayColor: MaterialStatePropertyAll(
                Color.fromRGBO(0, 0, 0, 0.05),
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
            onPressed: () {
              setState(() => (diceRoll = random.nextInt(6) + 1));
            },
            child: const Text(
              'Roll Dice',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      );
}
