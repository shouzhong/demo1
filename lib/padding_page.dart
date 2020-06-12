import 'package:demo1/my_app_bar.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class PaddingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PaddingPageState();
  }
}

class _PaddingPageState extends State<PaddingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Padding Page",),
      body: Padding(
        padding: EdgeInsets.all(size(30)),
        child: Text("text"),
      ),
    );
  }
}