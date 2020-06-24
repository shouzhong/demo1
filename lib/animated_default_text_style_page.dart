import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class AnimatedDefaultTextStylePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedDefaultTextStylePageState();
  }
}

class _AnimatedDefaultTextStylePageState extends State<AnimatedDefaultTextStylePage> with SingleTickerProviderStateMixin {
  bool b = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "AnimatedDefaultTextStyle Page",),
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
        child: AnimatedDefaultTextStyle(
          style: TextStyle(color: b ? Colors.red : Colors.blue, fontSize:  b ? 100.mpx : 50.mpx),
          duration: Duration(milliseconds: 2000),
          child: Text("text"),
        ),
      ),
    );
  }
}