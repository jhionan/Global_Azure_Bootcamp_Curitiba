import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final double fontSize = 120;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Come to the ",
              style: TextStyle(fontSize: fontSize),
            ),
            Text(
              "Dart ",
              style: TextStyle(fontSize: fontSize, color: Colors.red.shade700),
            ),
            Text(
              "side",
              style: TextStyle(fontSize: fontSize),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Expanded(
          flex: 4,
            child: Image.asset("assets/dartside.png")),
        Spacer()
      ],
    );
  }
}
