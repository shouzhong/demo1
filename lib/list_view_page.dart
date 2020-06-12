import 'package:demo1/my_app_bar.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListViewPageState();
  }
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "List Page",),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(size(30)),
        children: [
          for (int i = 0; i < 50; i++)
            Container(
              padding: EdgeInsets.all(size(20)),
              child: Text("item$i"),
            )
        ],
      ),
    );
  }
}