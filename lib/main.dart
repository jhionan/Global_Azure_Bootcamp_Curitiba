import 'dart:math' show pi;
import 'package:azure_talk_cwb/pages/Page0.dart';
import 'package:azure_talk_cwb/pages/Page1.dart';
import 'package:azure_talk_cwb/pages/Page2.dart';
import 'package:azure_talk_cwb/pages/Page3.dart';
import 'package:azure_talk_cwb/pages/Page4.dart';
import 'package:azure_talk_cwb/pages/Page5.dart';
import 'package:azure_talk_cwb/pages/Page6.dart';
import 'package:azure_talk_cwb/pages/Page7.dart';
import 'package:azure_talk_cwb/ui/Background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Bloc.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: <String, WidgetBuilder>{"/": (context) => _Home()},
      theme: ThemeData(
          textTheme: TextTheme(
        body1: TextStyle(
            fontSize: 70.0,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            shadows: [
              Shadow(
                  color: Colors.black87,
                  offset: Offset.fromDirection(pi / 4, 7),
                  blurRadius: 5)
            ]),
      )),
    );
  }
}

class _Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Background(
      child: StreamBuilder(
          initialData: "0",
          stream: bloc.page,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data);
              switch (snapshot.data) {
                case "0":return Page0();
                  break;
                case "1": return Page1();
                  break;
                case "2": return Page2();
                break;
                case "3": return Page3();
                break;
                case "4": return Page4();
                break;
                case "5": return Page5();
                break;
                case "6": return Page6();
                break;
                case "7": return Page7();
                break;
                case "8": return Page2();
                break;
                case "9": return Page2();
                break;
                case "10": return Page2();
                break;
              }
            }
          }),
    ));
  }
}
