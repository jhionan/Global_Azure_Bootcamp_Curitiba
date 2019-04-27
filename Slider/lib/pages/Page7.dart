import 'package:flutter/material.dart';

class Page7 extends StatefulWidget {
  @override
  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 100,),
        Text("O que vem Dentro do Flutter?"),
        SizedBox(height: 50,),
        Expanded(child: Image.asset("assets/flutter_engine.png",
        fit: BoxFit.fitHeight,)),
        SizedBox(height: 50,)
      ],
    );
  }
}
