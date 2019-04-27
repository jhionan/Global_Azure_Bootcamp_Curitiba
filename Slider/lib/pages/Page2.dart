import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                size: 80,
                color: Colors.red.shade700,
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                  child: Text(
                "ECMA-408 (European Computer Manufacturers Association)",
                maxLines: 2,
              )),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                size: 80,
                color: Colors.red.shade700,
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                  child: Text(
                "AOT (AHEAD OF TIME)",
                maxLines: 2,
              )),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                size: 80,
                color: Colors.red.shade700,
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                  child: Text(
                "JIT (JUST IN TIME)",
                maxLines: 2,
              )),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                size: 80,
                color: Colors.red.shade700,
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                  child: Text(
                "Compila para bytecode ARM",
                maxLines: 2,
              )),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                size: 80,
                color: Colors.red.shade700,
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                  child: Text(
                    "Pode ser transcompilada para Java Script",
                    maxLines: 2,
                  )),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                size: 80,
                color: Colors.red.shade700,
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                  child: Text(
                    "Orientada a Objeto",
                    maxLines: 2,
                  )),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                size: 80,
                color: Colors.red.shade700,
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                  child: Text(
                    "Funcional",
                    maxLines: 2,
                  )),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                size: 80,
                color: Colors.red.shade700,
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                  child: Text(
                    "Reativo",
                    maxLines: 2,
                  )),
            ],
          ),
          Spacer()
        ],
      ),
    );
  }
}
