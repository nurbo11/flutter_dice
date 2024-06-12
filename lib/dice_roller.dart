import 'dart:math';
import 'package:flutter/material.dart';
final randomizer = Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var activeDiceImage = 'assets/images/dice-six-faces-five.png';
  var growableList = ['assets/images/dice-six-faces-six.png', 'assets/images/dice-six-faces-five.png', 'assets/images/dice-six-faces-four.png', 'assets/images/dice-six-faces-three.png', 'assets/images/dice-six-faces-two.png', 'assets/images/dice-six-faces-one.png'];
  void rollDice(){
      int diceRoll;
      setState(() {
        diceRoll = randomizer.nextInt(6);
        activeDiceImage = growableList[diceRoll];
      });
  }
  @override
    Widget build(context) {
        return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                     activeDiceImage, 
                    width: 200,
                  ),
                  const SizedBox(height: 60,
                  ),
                  TextButton(
                  onPressed: rollDice, 
                  style: 
                    TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const  TextStyle(
                      fontSize: 28,
                    )), 
                  child: const Text('Roll'),
                  ),
                ],
              );
    }
}