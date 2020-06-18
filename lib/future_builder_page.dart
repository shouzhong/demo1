import 'dart:math';

import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

class FutureBuilderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FutureBuilderPageState();
  }
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "FutureBuilder Page",),
      body: FutureBuilder(
        future: _test(),
        builder: (context, snap) {
          if (snap.hasData) {
            return Center(
              child: Text("${snap.data.toString()}"),
            );
          }
          return Center(
            child: Text("加载中"),
          );
        },
      ),
    );
  }

  Future<int> _test() async {
    await Future.delayed(Duration(milliseconds: 2000), () {
      print("延迟2秒");
    });
    return Random().nextInt(100);
  }
}