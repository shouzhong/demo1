import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class IntrinsicPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IntrinsicPageState();
  }
}

class _IntrinsicPageState extends State<IntrinsicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Intrinsic Page",),
      body: Column(
        children: [
          Container(
            width: 750.mpx,
            height: 300.mpx,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Container(width: 200.mpx, color: Colors.blue,),
                  Container(width: 200.mpx, height: 100.mpx, color: Colors.red,),
                  Container(width: 200.mpx, color: Colors.blue,),
                ],
              ),
            ),
          ),
          Container(
            width: 750.mpx,
            height: 300.mpx,
            child: IntrinsicWidth(
              child: Column(
                children: [
                  Container(height: 100.mpx, color: Colors.blue,),
                  Container(width: 300.mpx, height: 50.mpx, color: Colors.red,),
                  Container(height: 100.mpx, color: Colors.blue,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}