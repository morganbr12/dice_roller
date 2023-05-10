import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const DiceApp());
}


class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      home: Scaffold(
        backgroundColor: Colors.blue,
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                Colors.white70,
                Colors.blueGrey,
              ],
              )
            ),
            child: const DiceRoller()
          ),
      ),
    );
  }
}
