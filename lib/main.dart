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
          body: Diecee()),
    );
  }
}

class Diecee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/dice1.png',
                width: 100.0,
                height: 100.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Image.asset(
                'images/dice2.png',
                width: 100.0,
                height: 100.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
