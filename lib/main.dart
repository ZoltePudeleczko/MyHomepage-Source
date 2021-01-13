import 'package:flutter/material.dart';
import 'package:zborowskihomepage/Portfolio/portfolio.dart';
import 'package:zborowskihomepage/Mainpage/mainpage.dart';
import 'package:zborowskihomepage/Navbar/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Colors.white30,
        fontFamily: "Lato",
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.lightBlueAccent, Colors.lightBlue]
          )
        ),
        child: Column(
          children: <Widget>[
            Navbar(),
            Mainpage(),
            Portfolio(),
          ],
        )
      )
    );
  }
}
