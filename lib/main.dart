import 'package:flutter/material.dart';

import 'package:medpack/transition_animation.dart';

import 'drawer.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme(context),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        elevation: 0,
        leading: TextButton(
            onPressed: () {
              Navigator.push(context, PageTransitionAnimation(MyDrawer()));
            },
            child: Image.asset("assets/menu.png")),
        actions: [
          Center(
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.contain,
              width: 100,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor)),
                  onPressed: () {},
                  child: Text("Sign Up"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
