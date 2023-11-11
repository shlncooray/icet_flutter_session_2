/// Flutter Course - Session 2
/// Date: 11th November 2023
/// Auther: Shelan Cooray
/// Email: shlncooray@gmail.com
/// gradient_container.dart - Body Container of the application

import 'package:flutter/material.dart';
import 'package:role_dice_test/roller_dice.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: colors, begin: beginAlignment, end: endAlignment)),
        child: const Center(child: RollerDice()));
  }
}
