import 'dart:math';
import 'package:flutter/material.dart';

class MagicBallWidget extends StatefulWidget {
  @override
  _MagicBallWidgetState createState() => _MagicBallWidgetState();
}

class _MagicBallWidgetState extends State<MagicBallWidget> {
  int magicBall = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                shakeTheBall();
              },
              child: Image.asset('images3/ball$magicBall.png'),
            ),
          ),
        ],
      ),
    );
  }

  void shakeTheBall() {
    setState(() {
      magicBall = Random().nextInt(5) + 1;
    });
  }
}
