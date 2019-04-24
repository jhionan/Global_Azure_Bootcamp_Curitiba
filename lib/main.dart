import 'package:azure_talk_cwb/pages/Page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' show pi;

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
            fontSize: 80.0,
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
        body: StreamBuilder(
            initialData: "0",
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                switch (snapshot.data) {
                  case "0":
                    return Page0();
                    break;
                }
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
