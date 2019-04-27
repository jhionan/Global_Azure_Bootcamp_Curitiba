import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text("42",
        style: TextStyle(
          fontSize: 200
        ),),
        Spacer(),
        Text("“O Guia do Mochileiro das Galáxias”, de Douglas Adams.",
        style: TextStyle(
          fontSize: 40
        ),),
        SizedBox(height: 100,)
      ],
    );
  }
}
