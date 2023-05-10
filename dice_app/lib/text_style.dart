import 'package:flutter/material.dart';


class PrimaryText extends StatelessWidget {
  const PrimaryText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
      ),
    );
  }
}