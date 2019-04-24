import 'package:flutter/material.dart';
import 'dart:math' show pi;
import '../Bloc.dart';

class Background extends StatefulWidget {
  final Widget child;

  Background({this.child});

  @override
  _BackgroundState createState() => _BackgroundState(child);
}

class _BackgroundState extends State<Background> {
  final Widget _child;

  _BackgroundState(this._child);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.6,
            child: Image.asset(
              "assets/bg.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          GestureDetector(
            onTap: () {
              print("next");
              bloc.next();
            },
            onDoubleTap: () {
              print("preview");
              bloc.preview();
            },
            child: Center(child: _child),
          )
        ],
      ),
    );
  }
}
