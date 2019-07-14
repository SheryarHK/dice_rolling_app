import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text('Dice Rolling'),
    ),
    body: DiceApp(),
  )));
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int LDiceNumber = 1;
  int RDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  LDiceNumber = Random().nextInt(6) + 1;
                  RDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$LDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  RDiceNumber = Random().nextInt(6) + 1;
                  LDiceNumber = Random().nextInt(6) + 1;
                });
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
