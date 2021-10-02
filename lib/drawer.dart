import 'package:flutter/material.dart';

import 'theme.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width * .7) / 2;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "menu",
            style: TextStyle(
                color: Theme.of(context).backgroundColor, fontSize: 20),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        color: Theme.of(context).primaryColor,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: width,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Home",
                      style: Theme.of(context).textTheme.headline4,
                    )),
                Container(
                    width: width,
                    alignment: Alignment.centerLeft,
                    child: Text("About",
                        style: Theme.of(context).textTheme.headline4)),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    width: width,
                    child: Text("Blog",
                        style: Theme.of(context).textTheme.headline4)),
                Container(
                    alignment: Alignment.centerLeft,
                    width: width,
                    child: Text("Contact",
                        style: Theme.of(context).textTheme.headline4)),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                AnimatedDefaultTextStyle(
                    child: Text("instagram"),
                    style: Theme.of(context).textTheme.headline6,
                    duration: Duration(microseconds: 1000))
              ],
            )
          ],
        ),
      ),
    );
  }
}
