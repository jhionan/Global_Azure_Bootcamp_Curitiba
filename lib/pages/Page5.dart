import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: Text(
                "Flutter é um SDK criado pelo google para o desenvolvimento de "
                "aplicativos mobiles com alta qualidade,  nativos para iOS e Android e em tempo record.",
                textAlign: TextAlign.center,
                maxLines: 10,
              ),
            )),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Image.asset("assets/open_source.png"),
              SizedBox(width: 200,)
            ],
          ),
        ),
        SizedBox(height: 100,)
      ],
    );
  }
}
