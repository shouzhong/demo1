import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

class AlignPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AlignPageState();
  }
}

class _AlignPageState extends State<AlignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Align Page",),
      body: Align(
        alignment: Alignment.center,
        child: Text("text"),
      ),
    );
  }
}