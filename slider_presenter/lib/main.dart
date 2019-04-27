import 'package:flutter/material.dart';
import 'dart:async';

import 'SocketClient.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MyHome(),
    );
  }
}

class _MyHome extends StatefulWidget {
  @override
  State createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<_MyHome> {
  Stopwatch stopWatch = Stopwatch();
  Timer timer;
  String time = "0:00";
  SocketClient socketClient = SocketClient();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.red,
                  child: Center(
                    child: Icon(
                      Icons.chevron_left,
                      size: 80,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.green,
                  child: Center(
                    child: Icon(
                      Icons.chevron_right,
                      size: 80,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          if (timer == null)
                            timer = Timer.periodic(
                                Duration(seconds: 1), refreshTimer);
                          if (stopWatch.isRunning) {
                            stopWatch.stop();
                          } else {
                            stopWatch.start();
                          }
                        },
                        child: Text(
                          "$time",
                          style: TextStyle(fontSize: 50),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void refreshTimer(Timer timer) {
    setState(() {
      time =
          "${(stopWatch.elapsed.inSeconds / 60).truncate()}:"
              "${stopWatch.elapsed.inSeconds % 60 < 10
              ? ("0" + (stopWatch.elapsed.inSeconds % 60).toString())
              : stopWatch.elapsed.inSeconds % 60}";
    });
  }
}
