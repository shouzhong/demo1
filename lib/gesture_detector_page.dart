import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GestureDetectorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GestureDetectorPageState();
  }
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "GestureDetector Page",),
      body: Container(
        alignment: Alignment.center,
        child: GestureDetector(
          child: Text("text"),
          onTap: () {
            Fluttertoast.showToast(msg: "onTap");
          },
          onDoubleTap: () {
            Fluttertoast.showToast(msg: "onDoubleTap");
          },
          onLongPress: () {
            Fluttertoast.showToast(msg: "onLongPress");
          },
        ),
      ),
    );
  }
}