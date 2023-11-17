/// Flutter Course - Session 2
/// Date: 11th November 2023
/// Auther: Shelan Cooray
/// Email: shlncooray@gmail.com
/// roller_dice.dart - StatefullWidget which responsible for display Roller Dice images & Generate random dice images
/// based on user click event
///
import 'package:flutter/material.dart';
import 'package:role_dice_test/roller_dice.dart';

class NewGame extends StatefulWidget {
  const NewGame({super.key});

  @override
  State<NewGame> createState() => _NewGameState();
}

class _NewGameState extends State<NewGame> {
  bool isGameStarted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: isGameStarted
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const RollerDice(),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    child: const Text(
                      '< Back to Home',
                      style: TextStyle(color: Colors.lightBlue, fontSize: 20),
                    ),
                    onTap: () {
                      setState(() {
                        isGameStarted = false;
                      });
                    },
                  )
                ],
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 100),
                      child: const Text(
                        'Welcome to Roller Dice Game!',
                        style: TextStyle(color: Colors.white, fontSize: 32),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            isGameStarted = true;
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.pink,
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(fontSize: 28)),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text('Play New Game'),
                        ))
                  ]));
  }
}
