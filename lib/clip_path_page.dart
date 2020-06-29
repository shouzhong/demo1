import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class ClipPathPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ClipPathPage();
  }
}

class _ClipPathPage extends State<ClipPathPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "ClipPath Page",),
      body: Container(
        alignment: Alignment.center,
        child: ClipPath(
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

class _Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //左上角为(0,0)
    var path = Path();
    path.moveTo(0.mpx, size.height);
    path.lineTo(size.width / 2, 0.mpx);
    path.lineTo(size.width, size.height);
    path.close();//
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}