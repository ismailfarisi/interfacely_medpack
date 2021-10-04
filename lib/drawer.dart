import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final Animation<double> anim;
  const MyDrawer({
    Key? key,
    required this.anim,
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
            SizeTransition(
              sizeFactor: anim,
              axis: Axis.horizontal,
              axisAlignment: -1.0,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Close",
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: width,
                    alignment: Alignment.centerLeft,
                    child: SizeTransition(
                      sizeFactor: anim,
                      axis: Axis.horizontal,
                      axisAlignment: -1.0,
                      child: Text(
                        "Home",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    )),
                Container(
                    width: width,
                    alignment: Alignment.centerLeft,
                    child: SizeTransition(
                      sizeFactor: anim,
                      axis: Axis.horizontal,
                      axisAlignment: -1.0,
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
                    child: SizeTransition(
                      sizeFactor: anim,
                      axis: Axis.horizontal,
                      axisAlignment: -1.0,
                      child: Text("Blog",
                          style: Theme.of(context).textTheme.headline4),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    width: width,
                    child: SizeTransition(
                      sizeFactor: anim,
                      axis: Axis.horizontal,
                      axisAlignment: -1.0,
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
                SizeTransition(
                  sizeFactor: anim,
                  axis: Axis.horizontal,
                  axisAlignment: -1.0,
                  child: Text(
                    "Instagram",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizeTransition(
                    sizeFactor: anim,
                    axis: Axis.horizontal,
                    axisAlignment: -1.0,
                    child: Text('Facebook',
                        style: TextStyle(color: Colors.white))),
                SizeTransition(
                    sizeFactor: anim,
                    axis: Axis.horizontal,
                    axisAlignment: -1.0,
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
