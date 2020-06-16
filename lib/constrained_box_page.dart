import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class ConstrainedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ConstrainedBoxPageState();
  }
}

class _ConstrainedBoxPageState extends State<ConstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "ConstrainedBox Page",),
      body: Container(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: 100.mpx,
              minHeight: 100.mpx,
              maxWidth: 200.mpx,
              maxHeight: 200.mpx
          ),
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