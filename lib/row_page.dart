
import 'package:demo1/my_app_bar.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RowPageState();
  }
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Row Page"),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250.mpx,
            alignment: Alignment.center,
            child: Text("item1"),
          ),
          Container(
            width: 250.mpx,
            alignment: Alignment.center,
            child: Text("item2"),
          ),
          Container(
            width: 250.mpx,
            alignment: Alignment.center,
            child: Text("item3"),
          ),
        ],
      ),
    );
  }
}