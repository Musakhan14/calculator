// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int firstnum;

  late int secondnum;

  late String history = '';

  late String textToDisplay = '';

  late String result;

  late String operation;

  void btnOnClick(String btnValue) {
    print(btnValue);
    if (btnValue == 'C') {
      textToDisplay = '';
      firstnum = 0;
      secondnum = 0;
      result = '';
    } else if (btnValue == 'AC') {
      textToDisplay = '';
      firstnum = 0;
      secondnum = 0;
      result = '';
      history = '';
    } else if (btnValue == '+' ||
        btnValue == '-' ||
        btnValue == 'X' ||
        btnValue == '/') {
      firstnum = int.parse(textToDisplay);
      result = '';
      operation = btnValue;
    } else if (btnValue == '+/-') {
      if (textToDisplay[0] != '-') {
        result = '-$textToDisplay';
      } else {
        result = textToDisplay.substring(1);
      }
    } else if (btnValue == '<') {
      result = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnValue == '=') {
      secondnum = int.parse(textToDisplay);
      if (operation == '+') {
        result = (firstnum + secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '-') {
        result = (firstnum - secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == 'X') {
        result = (firstnum * secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '/') {
        result = (firstnum / secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
    } else {
      result = int.parse(textToDisplay + btnValue).toString();
    }
    setState(() {
      textToDisplay = result;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 44, 55, 65),
          centerTitle: true,
          title: Text('Calculator'),
        ),
        backgroundColor: Color(0xFF28527a),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(12.0),
              child: Text(
                history,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    color: Color(0x66FFFFFF),
                    fontSize: 24,
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              child: Text(
                textToDisplay,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: 'AC',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: 'C',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: '<',
                  fillcolor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: '/',
                  fillcolor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '9',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: '8',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: '7',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: 'X',
                  fillcolor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '6',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: '5',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: '4',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: '-',
                  fillcolor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '3',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: '2',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: '1',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: '+',
                  fillcolor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '+/-',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: '00',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: '0',
                  fillcolor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
                CalculatorButton(
                  text: '=',
                  fillcolor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  calback: btnOnClick,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
