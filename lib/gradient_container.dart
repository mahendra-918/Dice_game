import 'package:first_app/dice_roller.dart';
import 'package:first_app/style_text.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topRight;
var endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color1, color2],
                begin: startAlignment,
                end: endAlignment)),
        child: Center(
            child: DiceRoller(),
        )

    );
  }
}
