import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class SizedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SizedBoxPageState();
  }
}

class _SizedBoxPageState extends State<SizedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "SizedBox Page",),
      body: Column(
        children: [
          SizedBox(
            width: 100.mpx,
            height: 100.mpx,
            child: Container(color: Colors.blue,),
          ),
          SizedBox.fromSize(
            size: Size(100.mpx, 100.mpx),
            child: Container(color: Colors.red, width: 200.mpx, height: 200.mpx,),
          ),
          Container(
            width: 100.mpx,
            height: 100.mpx,
            child: SizedBox.expand(
              child: Container(color: Colors.blue, width: 200.mpx, height: 200.mpx,),
            ),
          ),
        ],
      ),
    );
  }
}