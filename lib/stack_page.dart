import 'package:demo1/my_app_bar.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StackPageState();
  }
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Stack Page",),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Positioned(
              top: 100.mpx,
              width: 200.mpx,
              height: 200.mpx,
              child: Container(
                color: Color(0xffff0000),
              ),
            ),
            Positioned(
              top: 400.mpx,
              width: 200.mpx,
              height: 200.mpx,
              child: Container(
                color: Color(0xff00ff00),
              ),
            ),
            Positioned(
              top: 700.mpx,
              width: 200.mpx,
              height: 200.mpx,
              child: Container(
                color: Color(0xff0000ff),
              ),
            ),
          ],
        ),
      ),
    );
  }

}