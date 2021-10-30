import 'package:flutter/material.dart';
import 'package:mi_card/pages/bmlCalculator.dart';
import 'package:mi_card/pages/destiniPage.dart';
import 'package:mi_card/pages/dicePage.dart';
import 'package:mi_card/pages/magicBall.dart';
import 'package:mi_card/pages/quizzler.dart';
import 'package:mi_card/pages/xylophonePage.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red[400],
            ),
            child: Text(
              'Apps List',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
          ),
          //------------Dice
          ListTile(
            title: Text(
              'Dice Page',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(DicePage.routeName);
            },
          ),
          //-------------Magic Ball
          ListTile(
            title: Text(
              'Magic Ball Page',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(MagicBall.routeName);
            },
          ),
          //------------------Xylophone Page
          ListTile(
            title: Text(
              'Xylophone Page',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(XylophoneScreen.routeName);
            },
          ),
          ListTile(
            title: Text(
              'Quizzler Page',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(QuizzlerScreen.routeName);
            },
          ),
          ListTile(
            title: Text(
              'Destini',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(DestiniPage.routeName);
            },
          ),
          ListTile(
            title: Text(
              'BML Calculator',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(BMLCalculator.routeName);
            },
          ),
        ],
      ),
    );
  }
}
