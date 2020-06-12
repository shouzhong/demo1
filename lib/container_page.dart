import 'package:demo1/my_app_bar.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContainerPageState();
  }
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Container Page",),
      body: Container(
        margin: EdgeInsets.all(size(30)),
        padding: EdgeInsets.all(size(30)),
        color: Colors.blue,
        child: Text("text"),
      ),
    );
  }
}