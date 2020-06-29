import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class DecoratedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DecoratedBoxPageState();
  }
}

class _DecoratedBoxPageState extends State<DecoratedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "DecoratedBox Page",),
      body: Container(
        alignment: Alignment.center,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color(0x8000ff00),
            border: Border.all(
                color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(20.mpx),
          ),
          position: DecorationPosition.foreground,
          child: Container(
            padding: EdgeInsets.all(50.mpx),
            child: Container(
              width: 200.mpx,
              height: 200.mpx,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}