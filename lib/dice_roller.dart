import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRolles extends StatefulWidget {
  const DiceRolles({super.key});

  @override
  State<DiceRolles> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRolles> {

  var currentDiceRoll = 2;

  void rollDice() {
    // var direRoll = 
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; // 1 <> 6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 120,
        ),
        const SizedBox(
          height: 20,
        ),

        /// Terdapat 3 jenis button built in flutter
        ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.amberAccent,
                textStyle: const TextStyle(fontSize: 15)),
            child: const Text(
              "Role Dice",
            )),
        // TextButton(onPressed: null, child: child),
        // ElevatedButton(onPressed: null, child: child)
      ],
    );
  }
}
