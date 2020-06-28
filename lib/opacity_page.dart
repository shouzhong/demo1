import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class OpacityPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OpacityPage();
  }
}

class _OpacityPage extends State<OpacityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Opacity Page",),
      body: Container(
        alignment: Alignment.center,
        child: Opacity(
          opacity: 0.5,
          child: Container(
            alignment: Alignment.center,
            width: 200.mpx,
            height: 200.mpx,
            color: Colors.blue,
            child: Text("text"),
          ),
        ),
      ),
    );
  }
}