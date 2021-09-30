import 'package:flutter/material.dart';

import 'theme.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leadingWidth: 80,
        elevation: 0,
        backgroundColor: theme.primaryColor,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "menu",
            style: TextStyle(color: theme.backgroundColor, fontSize: 20),
          ),
        ),
      ),
      body: Container(
        color: theme.primaryColor,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "data",
                      style: theme.textTheme.headline2,
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text("data", style: theme.textTheme.headline2)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text("data", style: theme.textTheme.headline2)),
                TextButton(
                    onPressed: () {},
                    child: Text("data", style: theme.textTheme.headline2)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
