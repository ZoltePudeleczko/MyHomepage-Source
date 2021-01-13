import 'package:flutter/material.dart';

IconData linkedin = IconData(0xf05c, fontFamily: 'MyFlutterApp');

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) { // Big Desktop
            return DesktopMainpage();
          } else { // Mobile
            return MobileMainpage();
          }
        }
    );
  }
}

class DesktopMainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 60.0,
        horizontal: 100.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.indigoAccent,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Hi there :)\nI'm Szymon Zborowski and I code",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Want to get to know me?",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    color: Colors.tealAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(15.0)
                        )
                    ),
                    onPressed: () {},
                    child: Row(
                        children: <Widget>[
                          Icon(Icons.accessibility_sharp),
                          Text(
                              "Check out my GitHub"
                          ),
                        ]
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    color: Colors.tealAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(15.0)
                        )
                    ),
                    onPressed: () {},
                    child: Row(
                        children: <Widget>[
                          Text(
                              "Find me on LinkedIn"
                          ),
                          Icon(linkedin),
                        ]
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}

class MobileMainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}