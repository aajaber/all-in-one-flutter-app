import 'package:flutter/material.dart';
import 'package:mi_card/widgets/diceWidget.dart';

class DicePage extends StatelessWidget {
  static const routeName = '/dice-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      backgroundColor: Colors.red,
      body: DiceWidget(),
    );
  }
}
