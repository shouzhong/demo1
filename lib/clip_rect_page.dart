import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class ClipRectPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ClipRectPageState();
  }
}

class _ClipRectPageState extends State<ClipRectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "ClipRect Page",),
      body: Container(
        alignment: Alignment.center,
        child: ClipRect(
          clipper: _Clipper(),
          child: Container(
            width: 200.mpx,
            height: 200.mpx,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class _Clipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width / 2, size.height / 2);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}