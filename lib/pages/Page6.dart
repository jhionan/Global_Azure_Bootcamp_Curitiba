import 'package:flutter/material.dart';

class Page6 extends StatefulWidget {
  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("O que Flutter Faz?"),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Para quem Flutter foi desenvolvido?"),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Que tipo de Apps eu consigo desenvolver?"),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Quais IDEs posso usar"),
        ),
      ],
    );
  }
}
