import 'package:flutter/material.dart';
import 'package:medpack/theme.dart';

import 'drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
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
        backgroundColor: theme.backgroundColor,
        leading: TextButton(
          onPressed: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                    pageBuilder: (context, _, __) => MyDrawer(),
                    transitionsBuilder: (context, anim, _, child) =>
                        TweenAnimationBuilder(
                          child: child,
                          tween: Tween(begin: 0.0, end: 1.0),
                          duration: Duration(milliseconds: 1000),
                          builder: (context, value, child) {
                            return child;
                          },
                        )));
          },
          child: Text(
            "menu",
            style: TextStyle(color: theme.primaryColor, fontSize: 20),
          ),
        ),
        actions: [
          Center(child: Text("Med")),
          Center(child: Text("Pack")),
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
                      backgroundColor:
                          MaterialStateProperty.all(theme.primaryColor)),
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
