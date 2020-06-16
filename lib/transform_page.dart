import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class TransformPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TransformPageState();
  }
}

class _TransformPageState extends State<TransformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Transform Page",),
      body: Column(
        children: [
          Transform.rotate(
            angle: 3.14159 / 2,
            child: Text("text"),
          ),
          Transform.scale(
            scale: 0.5,
            child: Text("text"),
          ),
          Transform.translate(
            offset: Offset(30.mpx, 30.mpx),
            child: Text("text"),
          )
        ],
      ),
    );
  }
}