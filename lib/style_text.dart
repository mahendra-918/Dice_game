

import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.text,{super.key});
  
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,style: TextStyle(
        fontSize: 32.5,
        color: Colors.green,
        fontWeight: FontWeight.bold
      ),),
    );
  }
}