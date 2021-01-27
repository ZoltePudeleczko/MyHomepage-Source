import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:flutter_icons/flutter_icons.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
      padding: const EdgeInsets.only(
        top: 60.0,
      ),
      child: SizedBox(
        width: 1200,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.indigoAccent,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 6,
                offset: Offset(20, 20),
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: HiColumnDesktop(),
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
      ),
    );
  }
}

class MobileMainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60.0,
        left: 50.0,
        right: 50.0,
      ),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.indigoAccent,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 6,
                offset: Offset(20, 20),
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: HiColumnMobile(),
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

class HiColumnDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
            children: <Widget>[
              Text(
                "Hi there :)",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ]
        ),
        Row(
            children: <Widget>[
              Text(
                "I'm Szymon Zborowski and I ",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 30,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                width: 140.0,
                child: FadeAnimatedTextKit(
                  repeatForever: true,
                  pause: Duration(
                      milliseconds: 1000
                  ),
                  text: [
                    "code",
                    "develop",
                    "design",
                    "create",
                  ],
                  textStyle: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ]
        ),
      ],
    );
  }
}

class HiColumnMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
            Text(
              "Hi there :)",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "I'm Szymon Zborowski and I code",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 30,
              ),
              textAlign: TextAlign.left,
            ),
          ]
      );
  }
}
