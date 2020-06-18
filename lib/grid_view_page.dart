import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class GridViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GridViewPageState();
  }
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "GridView Page",),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 3,
        children: [
          for (int i = 0; i < 20; i++) Container(
            alignment: Alignment.center,
            child: Text("第$i项"),
          ),
        ],
      ),
    );
  }
}