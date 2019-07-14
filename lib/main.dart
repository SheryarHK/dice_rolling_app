import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.teal,
    appBar: AppBar(
      backgroundColor: Colors.teal,
      title: Text('Dice Rolling'),
    ),
    body: DiceApp(),
  )));
}

void onPressed() {}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int LDiceNumber = 1;
  int RDiceNumber = 1;

  void onPressedd() {
    setState(() {
      RDiceNumber = Random().nextInt(6) + 1;
      LDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                onPressedd();
              },
              child: Image(
                image: AssetImage('images/dice$LDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                onPressedd();
              },
              child: Image(
                image: AssetImage('images/dice$RDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
