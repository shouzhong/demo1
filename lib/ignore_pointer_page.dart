import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

class IgnorePointerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IgnorePointerPageState();
  }
}

class _IgnorePointerPageState extends State<IgnorePointerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "IgnorePointer Page",),
      body: Container(
        alignment: Alignment.center,
        child: IgnorePointer(
          child: GestureDetector(
            onTap: () {
              print("点击事件被拦截了，无法响应");
            },
            child: Text("text"),
          ),
        ),
      ),
    );
  }
}