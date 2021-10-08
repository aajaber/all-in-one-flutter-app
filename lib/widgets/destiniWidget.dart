import 'package:flutter/material.dart';
import 'package:mi_card/classes/storyBrain.dart';

StoryBrain storyBrain = StoryBrain();

class DestiniWidget extends StatefulWidget {
  @override
  _DestiniWidgetState createState() => _DestiniWidgetState();
}

class _DestiniWidgetState extends State<DestiniWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destini Page'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images4/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStoryText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    setState(() {
                      storyBrain.nextStory(1);
                    });
                  },
                  color: Colors.red,
                  child: Text(
                    storyBrain.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {
                      //Choice 2 made by user.
                      setState(() {
                        storyBrain.nextStory(2);
                      });
                    },
                    color: Colors.blue,
                    child: Text(
                      storyBrain.getChoice2(),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
