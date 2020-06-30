import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class CustomScrollViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomScrollViewPageState();
  }
}

class _CustomScrollViewPageState extends State<CustomScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "CustomScrollView Page",),
      body: CustomScrollView(
        slivers: [
          SliverGrid.count(
            crossAxisCount: 3,
            childAspectRatio: 2.08,
            children: [
              for (int i = 0; i < 11; i ++) Container(
                alignment: Alignment.center,
                child: Text("grid数据：$i"),
              ),
            ],
          ),
          SliverFixedExtentList(
            itemExtent: 120.mpx,
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Text("list数据：$index"),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}