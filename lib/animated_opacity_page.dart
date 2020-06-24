import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class AnimatedOpacityPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedOpacityPageState();
  }
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  bool b = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "AnimatedOpacity Page",),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flip),
        onPressed: () {
          setState(() {
            b = !b;
          });
        },
      ),
      body: Container(
        alignment: Alignment.center,
        child: AnimatedOpacity(
          opacity: b ? 1.0 : 0.0,
          duration: Duration(milliseconds: 2000),
          child: Container(
            width: 200.mpx,
            height: 200.mpx,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}