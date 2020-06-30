import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class SingleChildScrollViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SingleChildScrollViewPageState();
  }
}

class _SingleChildScrollViewPageState extends State<SingleChildScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "SingleChildScrollView Page",),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            for (int i = 0; i < 20; i++) Container(
              width: double.infinity,
              height: 120.mpx,
              alignment: Alignment.center,
              child: Text("数据：$i"),
            ),
          ],
        ),
      ),
    );
  }
}