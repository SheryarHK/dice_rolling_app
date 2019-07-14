import 'package:flutter/material.dart';

void main() {
  return runApp(
    myApp(),
  );
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice Rolling'),
        ),
      ),
    ));
  }
}
