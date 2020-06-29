import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

class RotatedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RotatedBoxPageState();
  }
}

class _RotatedBoxPageState extends State<RotatedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "RotatedBox Page",),
      body: Container(
        alignment: Alignment.center,
        child: RotatedBox(
          quarterTurns: 1,
          child: Text("text"),
        ),
      ),
    );
  }
}