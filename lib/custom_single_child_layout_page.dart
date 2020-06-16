import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class CustomSingleChildLayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomSingleChildLayoutPageState();
  }
}

class _CustomSingleChildLayoutPageState extends State<CustomSingleChildLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "CustomSingleChildLayout Page",),
      body: Container(
        color: Colors.blue,
        child: CustomSingleChildLayout(
          delegate: _CustomSingleChildLayoutPageDelegate(Size(200.mpx, 200.mpx)),
          child: Container(color: Colors.red, width: 100.mpx, height: 300.mpx,),
        ),
      ),
    );
  }
}

class _CustomSingleChildLayoutPageDelegate extends SingleChildLayoutDelegate {
  _CustomSingleChildLayoutPageDelegate(this.size);

  final Size size;

  @override
  Size getSize(BoxConstraints constraints) {
    return size;
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.tight(size);
  }

  @override
  bool shouldRelayout(_CustomSingleChildLayoutPageDelegate oldDelegate) {
    return size != oldDelegate.size;
  }
}