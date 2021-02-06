import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Portfolio extends StatelessWidget {
  final Function() parentScrollScreen;
  Portfolio({Key key, @required this.parentScrollScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) { // Big Desktop
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 75,
                    bottom: 50,
                  ),
                  child: ScrollPageButton(
                      parentScrollScreen: parentScrollScreen
                  ),
                ),
                DesktopPortfolio(),
              ]
            );
          } else { // Mobile
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 75,
                    bottom: 50,
                  ),
                  child: ScrollPageButton(
                      parentScrollScreen: parentScrollScreen
                  ),
                ),
                MobilePortfolio(),
              ]
            );
          }
        }
    );
  }
}

class DesktopPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(reverse: true),
      child: Container(
        color: Colors.white,
        height: 800,
        alignment: Alignment.center,
        child: Center(
            child: Text(
                "W.I.P."
            )
        ),
      ),
    );
  }
}

class MobilePortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(reverse: true),
      child: Container(
        color: Colors.white,
        height: 800,
        alignment: Alignment.center,
        child: Center(
            child: Text(
                "W.I.P."
            )
        ),
      ),
    );
  }
}

class ScrollPageButton extends StatelessWidget {
  final Function() parentScrollScreen;
  ScrollPageButton({Key key, @required this.parentScrollScreen}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: MaterialButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(15.0)
            )
        ),
        onPressed: () {
          parentScrollScreen();
        },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  " See my work "
              ),
              Icon(FontAwesome5.hand_point_down),
            ]
        ),
      ),
    );
  }
}
