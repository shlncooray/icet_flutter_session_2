import 'package:flutter/material.dart';
import 'package:role_dice_test/gradient_container.dart';

void main() {
  runApp(MaterialApp(
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
  ));
}
