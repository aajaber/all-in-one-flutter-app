import 'package:flutter/material.dart';
import '../widgets/bmlInputWidget.dart';

class BMLCalculator extends StatelessWidget {
  static const routeName = '\bml-screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21),
        // accentColor: Colors.teal,
        // textTheme: TextTheme(
        //   body1: TextStyle(color: Colors.white),
        // ),
      ),
      home: InputWidget(),
    );
  }
}
