import 'package:demo1/my_app_bar.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ColumnPageState();
  }
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Column Page"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200.mpx,
            alignment: Alignment.center,
            child: Text("item1"),
          ),
          Container(
            height: 200.mpx,
            alignment: Alignment.center,
            child: Text("item2"),
          ),
          Container(
            height: 200.mpx,
            alignment: Alignment.center,
            child: Text("item3"),
          ),
        ],
      ),
    );
  }
}