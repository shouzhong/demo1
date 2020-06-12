import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

class CenterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CenterPageState();
  }
}

class _CenterPageState extends State<CenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Center Page",),
      body: Center(
        child: Text("text"),
      ),
    );
  }
}