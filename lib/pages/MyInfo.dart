import 'package:flutter/material.dart';

class MyInfo extends StatefulWidget {
  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Jhionan Rian Lara dos Santos\nDesenvolvedor Mobile",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400
              ),),
            ],
          ),
          SizedBox(
            height: 150,
          ),
          Row(
            children: <Widget>[
              Image.asset(
                "assets/linkedin.png",
                height: 110,
              ),
              SizedBox(
                width: 30,
              ),
              Text("https://www.linkedin.com/in/jhionan"),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              Image.asset(
                "assets/github.png",
                height: 120,
              ),
              SizedBox(
                width: 30,
              ),
              Text("https://github.com/jhionan"),
            ],
          ),
          SizedBox(height: 40,),
          Row(
            children: <Widget>[
              Image.asset(
                "assets/email.png",
                height: 120,
              ),
              SizedBox(
                width: 30,
              ),
              Text("jhionan@gmail.com"),
            ],
          ),
        ],
      ),
    );
  }
}
