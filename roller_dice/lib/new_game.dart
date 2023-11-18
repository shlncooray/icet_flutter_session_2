import 'package:flutter/material.dart';
import 'package:role_dice_test/roller_dice.dart';

class NewGame extends StatefulWidget {
  const NewGame({super.key});

  @override
  State<NewGame> createState() => _NewGameState();
}

class _NewGameState extends State<NewGame> {
  bool isNewGameStarted = false;

  @override
  Widget build(BuildContext context) {
    return isNewGameStarted
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const RollerDice(),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isNewGameStarted = false;
                  });
                },
                child: const Text(
                  '< Back to Home',
                  style: TextStyle(color: Colors.blue, fontSize: 24),
                ),
              )
            ],
          )
        : Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 50),
                child: const Text(
                  'Welcome to Roller Dice App!',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.purple, fontSize: 42),
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isNewGameStarted = true;
                    });
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.pink,
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 28)),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('Play New Game'),
                  ))
            ],
          );
  }
}
