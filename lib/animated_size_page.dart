import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class AnimatedSizePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedSizePageState();
  }
}

class _AnimatedSizePageState extends State<AnimatedSizePage> with SingleTickerProviderStateMixin {
  bool b = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "AnimatedSize Page",),
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
        child: AnimatedSize(
          duration: Duration(milliseconds: 2000),
          vsync: this,
          child: Container(
            width: b ? 400.mpx : 200.mpx,
            height: b ? 400.mpx : 200.mpx,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}