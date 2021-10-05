import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';

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
      debugShowCheckedModeBanner: false,
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
    final width = MediaQuery.of(context).size.width * .8;
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
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 1000),
                        pageBuilder: (context, anim, _) => MyDrawer(anim: anim),
                        transitionsBuilder: (context, anim1, anim2, child) {
                          return CircularRevealAnimation(
                            child: child,
                            animation: anim1,
                            centerAlignment: Alignment(-.9, -.85),
                          );
                        }));
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
            SizedBox(
              height: 40,
            ),
            Text(
              "We mail your",
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              "prescription.",
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: width * .92,
              height: 240,
              child: Image.asset(
                "assets/art1.png",
                width: width * .92,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "we are trusted by:",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/cvs.png",
                  width: width / 3,
                  fit: BoxFit.fitWidth,
                ),
                Image.asset(
                  "assets/walgreens.png",
                  width: width / 3,
                  height: 60,
                  fit: BoxFit.fitHeight,
                ),
                Image.asset(
                  "assets/walmart.png",
                  width: width / 3,
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
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
