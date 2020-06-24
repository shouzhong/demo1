import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class AnimatedPositionedPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedPositionedPageState();
  }
}

class _AnimatedPositionedPageState extends State<AnimatedPositionedPage> {
  bool b = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "AnimatedPositioned Page",),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flip),
        onPressed: () {
          setState(() {
            b = !b;
          });
        },
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            left: b ? 350.mpx : 200.mpx,
            top: b ? 350.mpx : 200.mpx,
            duration: Duration(milliseconds: 2000),
            child: Container(
              width: 200.mpx,
              height: 200.mpx,
              color: Colors.blue,
            ),
          ),
          AnimatedPositioned(
            right: b ? 350.mpx : 200.mpx,
            bottom: b ? 350.mpx : 200.mpx,
            duration: Duration(milliseconds: 2000),
            child: Container(
              width: 200.mpx,
              height: 200.mpx,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}