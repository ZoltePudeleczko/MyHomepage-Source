import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Portfolio extends StatelessWidget {
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
                  child: ScrollPageButton(),
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
                  child: ScrollPageButton(),
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
                "Portfolio"
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
                "Portfolio"
            )
        ),
      ),
    );
  }
}

class ScrollPageButton extends StatelessWidget {
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
