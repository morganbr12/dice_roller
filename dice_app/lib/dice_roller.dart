import 'package:dice_app/text_style.dart';
import 'package:flutter/material.dart';
import 'dart:math';


var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 2;



  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: const PrimaryText('Roll dice'),
          ),
        ],
      ),
    );
  }
}

