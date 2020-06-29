import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class CustomPaintPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomPaintPageState();
  }
}

class _CustomPaintPageState extends State<CustomPaintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "CustomPaint Page",),
      body: Container(
        alignment: Alignment.center,
        child: CustomPaint(
          painter: _Painter(),
          size: Size(200.mpx, 200.mpx),
        ),
      ),
    );
  }
}

class _Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint();
    p.color = Colors.blue;
    p.isAntiAlias = true;
    p.style = PaintingStyle.fill;
    canvas.drawCircle(size.center(Offset(0.mpx, 0.mpx)), size.width / 2, p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}