import 'package:flutter/material.dart';
import 'dart:html' as html;

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) { // Big Desktop
          return DesktopNavbar();
        } else { // Mobile
          return MobileNavbar();
        }
      }
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 100,
        right: 80,
        top: 20,
        bottom: 20,
      ),
      child: Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                      "Szymon Samuel ",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 30
                      )
                  ),
                  Text(
                      "Zborowski",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30
                      )
                  ),
                ]
              ),
              Row(
                children: <Widget>[
                  MaterialButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0)
                      )
                    ),
                    onPressed: () {
                      html.window.open('mailto:szzborowski@gmail.com', 'mail');
                      },
                      child: Text(
                      "Contact me",
                      style: TextStyle(
                      color: Colors.white),
                      ),
                      ),
                      SizedBox(
                      width: 30,
                      ),
                      MaterialButton(
                      color: Colors.indigoAccent,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                      Radius.circular(15.0)
                      )
                      ),
                      onPressed: () {
                        html.window.open('https://github.com/ZoltePudeleczko?tab=repositories', 'portfolio');
                      },
                      child: Text(
                      "Portfolio",
                      style: TextStyle(
                          color: Colors.white),
                    )
                  ),
                ]
              )
          ]
        )
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                      "Szymon Samuel ",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 30
                      )
                  ),
                  Text(
                      "Zborowski",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30
                      )
                  ),
                ]
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(15.0)
                          )
                      ),
                      onPressed: () {
                        html.window.open('mailto:szzborowski@gmail.com', 'mail');
                      },                      child: Text(
                        "Contact me",
                        style: TextStyle(
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    MaterialButton(
                        color: Colors.indigoAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(15.0)
                            )
                        ),
                        onPressed: () {
                          html.window.open('https://github.com/ZoltePudeleczko?tab=repositories', 'portfolio');
                        },
                        child: Text(
                          "Portfolio",
                          style: TextStyle(
                              color: Colors.white),
                        )
                    ),
                  ]
              ),
            )
          ]
        )
      ),
    );
  }
}