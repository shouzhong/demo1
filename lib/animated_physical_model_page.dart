import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class AnimatedPhysicalModelPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedPhysicalModelPageState();
  }
}

class _AnimatedPhysicalModelPageState extends State<AnimatedPhysicalModelPage> {
  bool b = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "AnimatedPhysicalModel Page",),
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
        child: AnimatedPhysicalModel(
          borderRadius: BorderRadius.circular(b ? 40.mpx : 20.mpx),
          shape: BoxShape.rectangle,
          elevation: 20.mpx,
          color: b ? Colors.blue : Colors.red,
          shadowColor: b ? Colors.blue : Colors.red,
          duration: Duration(milliseconds: 2000),
          child: Container(
            width: 200.mpx,
            height: 200.mpx,
          ),
        ),
      ),
    );
  }
}