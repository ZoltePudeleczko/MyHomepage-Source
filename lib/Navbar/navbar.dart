import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) { // Big Desktop
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800) { // Small Desktop
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
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            "Szymon Samuel Zborowski",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30
            )
          ),
          Row(
            children: <Widget>[
              Text(
                "Home",
                style: TextStyle(
                  color: Colors.white),
              ),
              Text(
                "About us",
                style: TextStyle(
                    color: Colors.white),
              ),
              Text(
                "Portfolio",
                style: TextStyle(
                    color: Colors.white),
              )
            ]
          )
        ]
      )
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

}
