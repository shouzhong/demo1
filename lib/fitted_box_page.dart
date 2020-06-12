import 'package:demo1/my_app_bar.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class FittedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FittedBoxPageState();
  }
}

class _FittedBoxPageState extends State<FittedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "FittedBox Page",),
      body: Center(
        child: Container(
          width: size(200),
          height: size(200),
          color: Colors.red,
          child: FittedBox(
            child: Container(
              color: Colors.blue,
              child: Text("text"),
            ),
          ),
        ),
      ),
    );
  }
}