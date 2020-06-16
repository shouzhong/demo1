import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class BaselinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BaselinePageState();
  }
}

class _BaselinePageState extends State<BaselinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "BaseLine Page",),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Baseline(
            baseline: 80.mpx,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              "aaAA啊啊",
              style: TextStyle(
                fontSize: 30.mpx,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
          Baseline(
            baseline: 120.mpx,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              width: 120.mpx,
              height: 120.mpx,
              color: Colors.blue,
            ),
          ),
          Baseline(
            baseline: 80.mpx,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              "aaAA啊啊",
              style: TextStyle(
                fontSize: 36.mpx,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}