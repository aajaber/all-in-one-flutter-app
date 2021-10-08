import 'package:flutter/material.dart';
import 'package:mi_card/widgets/drawerWidget.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        elevation: 0,
      ),
      drawer: MainDrawer(),
      backgroundColor: Colors.red[400],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/aj.jpg'),
                radius: 50.0,
              ),
              //----------------------Name
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Ahmad Jaber',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              //-------------------First Field
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    color: Colors.teal.shade100,
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                    fontSize: 18),
              ),
              SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(color: Colors.teal.shade100)),
              // ---------------------Second Field
              Text(
                'FRONT-END DEVELOPER',
                style: TextStyle(
                    color: Colors.teal.shade100,
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                    fontSize: 18),
              ),
              SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(color: Colors.teal.shade100)),
              // ---------------------Second Field
              Text(
                'BACHELOR DEGREE IN COMPUTER SCIENCE',
                style: TextStyle(
                    color: Colors.teal.shade100,
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0,
                    fontSize: 18),
              ),
              SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(color: Colors.teal.shade100)),
              //===============Phone Number container.
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.phone_android, color: Colors.teal),
                  title: Text(
                    '+962 798968913',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro',
                        color: Colors.teal.shade900),
                  ),
                ),
              ),
              //=================== Email Address container
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.teal),
                  title: Text(
                    'aajaber.97@gmail.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro',
                        color: Colors.teal.shade900),
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
