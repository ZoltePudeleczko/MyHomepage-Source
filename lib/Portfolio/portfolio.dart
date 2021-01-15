import 'package:flutter/material.dart';
import 'package:zborowskihomepage/Funstaf/wave_clipper.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1400) { // Big Desktop
            return Padding(
              padding: const EdgeInsets.only(
                  top: 200,
              ),
              child: DesktopPortfolio(),
            );
          } else { // Mobile
            return Padding(
              padding: const EdgeInsets.only(
                  top: 50.0,
              ),
              child: MobilePortfolio(),
            );
          }
        }
    );
  }
}

class DesktopPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(  //upper clippath with less height
          clipper:WaveClipper(), //set our custom wave clipper.
          child:Container(
              color: Colors.white,
              height: 800,
              alignment: Alignment.center,
          ),
        );
  }
}

class MobilePortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(  //upper clippath with less height
      clipper:WaveClipper(), //set our custom wave clipper.
      child:Container(
          color: Colors.white,
          height:800,
          alignment: Alignment.center,
      ),
    );
  }
}