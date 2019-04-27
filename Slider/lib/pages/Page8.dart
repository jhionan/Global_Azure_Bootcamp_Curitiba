import 'package:flutter/material.dart';

class Page8 extends StatefulWidget {
  @override
  _Page8State createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        Text(
          "Como o Flutter Roda?",
          style: TextStyle(fontSize: 80,
          color: Colors.red.shade700),
        ),
        SizedBox(height: 100,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text("No Android:",
                      style: TextStyle(
                          color: Colors.green
                      ),),
                    SizedBox(height: 24,),
                    Text("NDK"),
                    Text("Biblioteca ARM"),
                    Text("Empacotado em um APK")
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              SizedBox(width: 30,),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text("No iOS:",
                    style: TextStyle(
                      color: Colors.blue
                    ),),
                    SizedBox(height: 24,),
                    Text("LLVM"),
                    Text("Biblioteca ARM"),
                    Text("Empacotado em um .ipa")
                  ],
                  crossAxisAlignment: CrossAxisAlignment.end,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
