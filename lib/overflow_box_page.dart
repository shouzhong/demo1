import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class OverflowBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OverflowBoxPageState();
  }
}

class _OverflowBoxPageState extends State<OverflowBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "OverflowBox Page"),
      body: Center(
        child: Container(
          width: 200.mpx,
          height: 200.mpx,
          padding: EdgeInsets.all(30.mpx),
          color: Colors.blue,
          child: OverflowBox(
            maxHeight: 400.mpx,
            child: Container(
              height: 600.mpx,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}