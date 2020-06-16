import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class LimitedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LimitedBoxPageState();
  }
}

/// 当LimitedBox最大宽度不受限制时，child的宽度就会受到这个最大宽度的限制，同理高度
class _LimitedBoxPageState extends State<LimitedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "LimitedBox Page",),
      body: Row(
        children: [
          Container(
            width: 100.mpx,
            color: Colors.blue,
          ),
          LimitedBox(
            maxWidth: 150.mpx,
            child: Container(
              width: 250.mpx,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}