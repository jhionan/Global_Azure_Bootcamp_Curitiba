import 'package:flutter/material.dart';

class MyInfo extends StatefulWidget {
  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [Color(0xFF4AE2A9), Color(0xFF3990B6), Color(0xFF3A1B77), Color(0xFF231653)].reversed.toList(),
                    stops: [0, 0.5, 0.6, 0.7])),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Jhionan Rian Lara dos Santos\nMobile software engineer\nFlutter Specialist"
                      " at Brev",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 80,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400
                  ),),
                ],
              ),
              SizedBox(
                height: 100,
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
                height: 30,
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
        ),
      ],
    );
  }
}
