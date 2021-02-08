import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
      title: 'Szymon Samuel Zborowski',
      theme: ThemeData(
        fontFamily: "Lato",
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _scrollController = new ScrollController();

  void scrollToPortfolio() {
    SchedulerBinding.instance.addPostFrameCallback((_) =>
        _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: Duration(
              milliseconds: 500,
            ),
            curve: Curves.linear,
        ));
  }

  void scrollToPortfolioFast() {
    SchedulerBinding.instance.addPostFrameCallback((_) =>
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(
            milliseconds: 100,
          ),
          curve: Curves.linear,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return Scaffold(
              body: Container(
                  height: constraints.maxHeight,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.lightBlueAccent, Colors.lightBlue]
                      )
                  ),
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: <Widget>[
                        Navbar(
                          parentScrollScreen: scrollToPortfolioFast
                        ),
                        Mainpage(),
                        Portfolio(
                            parentScrollScreen: scrollToPortfolio
                        ),
                      ],
                    ),
                  )
              )
          );
        }
    );  }
}
