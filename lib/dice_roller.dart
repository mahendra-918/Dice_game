import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  @override
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }
  Widget build(context){
    return  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Roll the dice!",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 100),
            Text("You rolled a $currentDiceRoll",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            Image.asset(
              "assets/images/dice-$currentDiceRoll.png",
              width: 220,
            ),
            // const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice, 
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top:20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                )
              ),
              child: const Text("roll dice")
              )
          ],
        );
  }
}


