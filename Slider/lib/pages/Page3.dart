import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text("Flutter",
        style: TextStyle(
          fontSize: 300
        ),),
        SizedBox(height: 30,),
        Text("Qual o significado do Flutter,\n do universo e tudo mais?",
        textAlign: TextAlign.center,),
        Spacer(),
      ],
    );
  }
}
