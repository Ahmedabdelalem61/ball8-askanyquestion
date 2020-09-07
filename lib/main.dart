import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask me Any thing'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: back(),
        ),
      ),
    );

class back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return theAskButton();
  }
}

class theAskButton extends StatefulWidget {
  @override
  _theAskButtonState createState() => _theAskButtonState();
}

class _theAskButtonState extends State<theAskButton> {
  int randomly = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            randomly = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$randomly.png'),
      ),
    );
  }
}
