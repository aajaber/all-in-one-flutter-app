import 'package:flutter/material.dart';
import 'package:mi_card/widgets/magicBallWidget.dart';

class MagicBall extends StatelessWidget {
  static const routeName = '/magicBall-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: MagicBallWidget(),
    );
  }
}
