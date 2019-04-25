import 'package:flutter/material.dart';

class Page9 extends StatefulWidget {
  @override
  _Page9State createState() => _Page9State();
}

class _Page9State extends State<Page9> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        Text("Como é programar em flutter?"),
        SizedBox(
          height: 50,
        ),
        Expanded(child: Image.asset("assets/matrioska.png",
        fit: BoxFit.fitHeight,)),
        SizedBox(height: 50,)
      ],
    );
  }
}
