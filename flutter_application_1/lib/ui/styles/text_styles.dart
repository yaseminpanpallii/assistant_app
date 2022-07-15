import 'package:flutter/material.dart';

class MyTextStyle {
  
  static const genericSize = TextStyle(fontSize: 18, letterSpacing: 0.4, color:  Color.fromARGB(152, 0, 0, 0));

  static TextStyle customTextStyle(double size,  Color color    ) {
    return TextStyle(letterSpacing: 0.4, color: color, fontSize: size, fontWeight: FontWeight.w500);
  }
}
