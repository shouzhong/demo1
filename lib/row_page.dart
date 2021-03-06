
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
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Text("item1"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: Colors.green,
              child: Text("item2"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text("item3"),
            ),
          ),
        ],
      ),
    );
  }
}