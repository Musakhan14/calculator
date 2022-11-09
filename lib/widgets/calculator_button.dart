// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillcolor;
  final int textcolor;
  final double textsize;
  final Function calback;

  CalculatorButton(
      {required this.text,
      required this.fillcolor,
      required this.textcolor,
      required this.textsize,
      required this.calback,
      required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 70,
      height: 70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(fillcolor),
          onPrimary: Color(textcolor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        // 0xFF8ac4d0
        // 0xFF000000
        onPressed: () {
          calback(text);
        },
        child: Text(
          text,
          style: GoogleFonts.rubik(
            textStyle: TextStyle(fontSize: textsize),
          ),
        ),
      ),
    );
  }
}
