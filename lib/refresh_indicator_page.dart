import 'dart:math';

import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class RefreshIndicatorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RefreshIndicatorPageState();
  }
}

class _RefreshIndicatorPageState extends State<RefreshIndicatorPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "RefreshIndicator Page",),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(Duration(milliseconds: 2000), () {
              setState(() {
                _count = Random().nextInt(20);
              });
          });
        },
        child: ListView(
          children: [
            for (int i = 0; i < _count; i++) Container(
              width: double.infinity,
              height: 100.mpx,
              alignment: Alignment.center,
              child: Text("第$i项数据"),
            ),
          ],
        ),
      ),
    );
  }
}