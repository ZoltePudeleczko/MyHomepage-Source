import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) { // Big Desktop
            return DesktopPortfolio();
          } else { // Mobile
            return MobilePortfolio();
          }
        }
    );
  }
}

class DesktopPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MobilePortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}