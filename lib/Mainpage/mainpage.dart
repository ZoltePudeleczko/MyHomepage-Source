import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:flutter_icons/flutter_icons.dart';

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1400) { // Big Desktop
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
        horizontal: 150.0,
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
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Want to get to know me?",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: <Widget>[
                      GithubButton(),
                      SizedBox(
                        height: 15,
                      ),
                      LinkedInButton(),
                    ]
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
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 60.0,
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
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "Hi there :)\nI'm Szymon Zborowski and I code",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center,
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
                    GithubButton(),
                    SizedBox(
                      height: 10,
                    ),
                    LinkedInButton(),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}

class LinkedInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: MaterialButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(15.0)
            )
        ),
        onPressed: () {
          html.window.open('https://www.linkedin.com/in/szymon-zborowski/', 'linkedin');
        },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Find me on LinkedIn",
              ),
              Icon(FontAwesome5Brands.linkedin),
            ]
        ),
      ),
    );
  }
}

class GithubButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: MaterialButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(15.0)
            )
        ),
        onPressed: () {
          html.window.open('https://github.com/ZoltePudeleczko', 'github');
        },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(FontAwesome5Brands.github),
              Text(
                  "Check out my GitHub"
              ),
            ]
        ),
      ),
    );
  }
}
