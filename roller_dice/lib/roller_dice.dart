/// Flutter Course - Session 2
/// Date: 11th November 2023
/// Auther: Shelan Cooray
/// Email: shlncooray@gmail.com
/// roller_dice.dart - StatefullWidget which responsible for display Roller Dice images & Generate random dice images
/// based on user click event

import 'dart:math';

import 'package:flutter/material.dart';

class RollerDice extends StatefulWidget {
  const RollerDice({super.key});

  @override
  State<RollerDice> createState() {
    return _RollerDiceState();
  }
}

class _RollerDiceState extends State<RollerDice> {
  var diceNumber = 1;

  void roll() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: roll,
            style: TextButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Once'))
      ],
    );
  }
}
