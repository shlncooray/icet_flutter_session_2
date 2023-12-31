/// Flutter Course - Session 2
/// Date: 11th November 2023
/// Auther: Shelan Cooray
/// Email: shlncooray@gmail.com
/// app.dart - Contain the Material App root & Scaffold

import 'package:flutter/material.dart';
import 'package:role_dice_test/gradient_container.dart';

class RollerDiceApp extends StatelessWidget {
  const RollerDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('iCET Roller Dice'),
            backgroundColor: Colors.brown,
          ),
          body: const GradientContainer(
            colors: [
              Color.fromARGB(255, 115, 50, 0),
              Color.fromARGB(255, 228, 213, 0)
            ],
          )),
    );
  }
}
