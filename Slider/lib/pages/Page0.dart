import 'dart:math' show pi;

import 'package:flutter/material.dart';

class Page0 extends StatefulWidget {
  @override
  _Page0State createState() => _Page0State();
}

class _Page0State extends State<Page0> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Spacer(
          flex: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hello "),
            Text(
              "FLUTTER!",
              style: TextStyle(
                  color: Colors.red.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 120,
                  shadows: [
                    Shadow(
                        color: Colors.black87,
                        offset: Offset.fromDirection(pi / 4, 7),
                        blurRadius: 5)
                  ]),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("utilizando "),
            Text(
              "Flutter",
              style: TextStyle(color: Colors.blue.shade600),
            ),
            Text(" em "),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "apps",
              style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  //decorationColor: Colors.blue.shade600,
                  decorationThickness: 2.5),
            ),
            Text(" telas"),
            Text(" reais")
          ],
        ),
        Spacer(
          flex: 1,
        ),
        Image.asset(
          "assets/flutter.png",
          height: 400,
        ),
        Spacer(
          flex: 2,
        )
      ],
    );
  }
}
