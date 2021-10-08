import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class XylophoneScreen extends StatelessWidget {
  static const routeName = '/Xylophone-page';

  void playSound(int soundNumber) {
    final soundPlayer = AudioCache();
    soundPlayer.play('assets_note$soundNumber.wav');
  }

  Expanded buildKey({int number, Color color}) {
    return Expanded(
      // ignore: missing_required_param
      // ignore: deprecated_member_use
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Xylophone Screen'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(number: 1, color: Colors.white),
            buildKey(number: 2, color: Colors.grey[100]),
            buildKey(number: 3, color: Colors.grey[200]),
            buildKey(number: 4, color: Colors.grey[300]),
            buildKey(number: 5, color: Colors.grey[400]),
            buildKey(number: 6, color: Colors.grey[500]),
            buildKey(number: 7, color: Colors.grey[600]),
          ],
        ),
      ),
    );
  }
}
