import 'package:flutter/material.dart';
import 'package:medpack/textwriteanimation.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width * .7) / 2;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
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
              color: Colors.white,
            ),
            HorizontalSizeAnim(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "menu",
                  strutStyle: StrutStyle(height: .1),
                  style: TextStyle(
                      color: Theme.of(context).backgroundColor, fontSize: 20),
                ),
              ),
            ),
          ],
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
                    child: HorizontalSizeAnim(
                      child: Text(
                        "Home",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    )),
                Container(
                    width: width,
                    alignment: Alignment.centerLeft,
                    child: HorizontalSizeAnim(
                      child: Text("About",
                          style: Theme.of(context).textTheme.headline4),
                    )),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    width: width,
                    child: HorizontalSizeAnim(
                      child: Text("Blog",
                          style: Theme.of(context).textTheme.headline4),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    width: width,
                    child: HorizontalSizeAnim(
                      child: Text("Contact",
                          style: Theme.of(context).textTheme.headline4),
                    )),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HorizontalSizeAnim(
                  child: Text(
                    "Instagram",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                HorizontalSizeAnim(
                    child: Text('Facebook',
                        style: TextStyle(color: Colors.white))),
                HorizontalSizeAnim(
                    child:
                        Text('Linkedin', style: TextStyle(color: Colors.white)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
