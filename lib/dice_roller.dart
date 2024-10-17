import 'dart:math';
import 'package:flutter/material.dart';

  final randomizer = Random();


class DiceRoller extends StatefulWidget {
   DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) +
          1; // loop while run 0-6 if in nextInt(6) it will run 0-5
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$currentDiceRoll.png',
        width: 200,
      ),
      const SizedBox(height: 20),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          //padding: const EdgeInsets.only(top: 20),
          foregroundColor: const Color.fromARGB(255, 51, 8, 8),
          textStyle: const TextStyle(fontSize: 18),
        ),
        child: const Text('Roll'),
      )
    ]);
  }
}
