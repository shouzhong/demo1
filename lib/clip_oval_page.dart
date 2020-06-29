import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class ClipOvalPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ClipOvalPageState();
  }
}

class _ClipOvalPageState extends State<ClipOvalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "ClipOval Page",),
      body: Container(
        alignment: Alignment.center,
        child: ClipOval(
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