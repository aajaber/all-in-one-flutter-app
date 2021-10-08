import 'package:flutter/material.dart';
import 'dart:math';

// ignore: must_be_immutable
class DiceWidget extends StatefulWidget {
  @override
  _DiceWidgetState createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                rollTheDice();
              },
              child: Image.asset('images2/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                rollTheDice();
              },
              child: Image.asset('images2/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void rollTheDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
}
