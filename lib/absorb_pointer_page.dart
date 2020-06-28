import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

class AbsorbPointerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AbsorbPointerPageState();
  }
}

class _AbsorbPointerPageState extends State<AbsorbPointerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "AbsorbPointer Page",),
      body: Container(
        alignment: Alignment.center,
        child: AbsorbPointer(
          child: GestureDetector(
            onTap: () {
              print("无法响应");
            },
            child: Text("text"),
          ),
        ),
      ),
    );
  }
}