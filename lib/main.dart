import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Diecee'),
            backgroundColor: Colors.red,
          ),
          body: DiecePage()),
    );
  }
}

class DiecePage extends StatefulWidget {
  @override
  _DiecePageState createState() => _DiecePageState();
}

class _DiecePageState extends State<DiecePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Diece(),
          Diece(),
        ],
      ),
    );
  }
}

class Diece extends StatefulWidget {
  Diece({Key key}) : super(key: key);

  @override
  _DieceState createState() => _DieceState();
}

class _DieceState extends State<Diece> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          changeDieceFace();
        },
        child: Image.asset(
          'images/dice$rightDieceNumber.png',
        ),
      ),
    );
  }

  int leftDieceNumber = 1;
  int rightDieceNumber = 1;

  void changeDieceFace() {
    setState(() {
      leftDieceNumber = Random().nextInt(6) + 1;
      rightDieceNumber = Random().nextInt(6) + 1;
    });
  }
}
