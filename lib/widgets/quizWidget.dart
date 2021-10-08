import 'package:flutter/material.dart';
import 'package:mi_card/classes/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];
  void checkAnswer(bool userPicked) {
    bool correctAnswer = quizBrain.getQuestionAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished',
          desc: 'You\'ve answered all the questions ',
          buttons: [
            DialogButton(
              child: Text(
                "Reset",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            ),
          ],
        ).show();

        quizBrain.reset();
        scoreKeeper = [];
      } else {
        if (userPicked == correctAnswer) {
          //------------- show check icon
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          //-----------show close icon
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            // ignore: deprecated_member_use
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            // ignore: deprecated_member_use
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
