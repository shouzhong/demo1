import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class OffstagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OffstagePageState();
  }
}

class _OffstagePageState extends State<OffstagePage> {
  bool offstage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Offstage Page",),
      body: Column(
        children: [
          Offstage(
            offstage: offstage,
            child: Container(width: 100, height: 100, color: Colors.blue,),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                offstage = !offstage;
              });
            },
            child: Text("点击切换显示"),
          ),
        ],
      ),
    );
  }
}