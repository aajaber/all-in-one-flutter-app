import 'package:flutter/material.dart';
import '../pages/bmlCalculator.dart';
import '../pages/destiniPage.dart';
import '../pages/dicePage.dart';
import '../pages/magicBall.dart';
import '../pages/quizzler.dart';
import '../pages/xylophonePage.dart';
import '../pages/profilePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false,
      //initialRoute: ProfileScreen.routeName,
      routes: {
        ProfileScreen.routeName: /*===*/(ctx) => ProfileScreen(),
        DicePage.routeName: /*========*/(ctx) => DicePage(),
        MagicBall.routeName: /*=======*/(ctx) => MagicBall(),
        XylophoneScreen.routeName: /*=*/(ctx) => XylophoneScreen(),
        QuizzlerScreen.routeName: /*==*/(ctx) => QuizzlerScreen(),
        DestiniPage.routeName: /*=====*/(ctx) => DestiniPage(),
        BMLCalculator.routeName: /*===*/(ctx) => BMLCalculator(),
      },
    );
  }
}
