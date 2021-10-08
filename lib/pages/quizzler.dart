import 'package:flutter/material.dart';
import 'package:mi_card/widgets/quizWidget.dart';

class QuizzlerScreen extends StatelessWidget {
  static const routeName = '/quizzler-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: Text('Quizzler App'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}
