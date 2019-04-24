import 'package:azure_talk_cwb/ui/Background.dart';
import 'package:flutter/material.dart';
import 'dart:math' show pi;

class Page0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(flex: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Hello World!!  "),
                Text(
                  "FLUTTER!",
                  style: TextStyle(
                      color: Colors.red.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
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
                Text("Azure", style: TextStyle(color: Colors.blue.shade600),),
                Text(" em aplicações reais")
              ],
            ),
            Spacer(flex: 1,),
            Image.asset("assets/flutter.png", height: 400,),
            Spacer(flex: 2,)
          ],
        ),
      ),
    );
  }
}
