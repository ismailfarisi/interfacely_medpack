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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        elevation: 0,
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.circle,
              size: 10,
              color: Theme.of(context).primaryColor,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, PageTransitionAnimation(MyDrawer()));
              },
              child: Text(
                "menu",
                strutStyle: StrutStyle(height: .01),
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 20),
              ),
            ),
          ],
        ),
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
