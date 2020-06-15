import 'package:demo1/my_app_bar.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class AspectRatioPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AspectRatioPageState();
  }
}

class _AspectRatioPageState extends State<AspectRatioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "AspectRatio Page",),
      body: Center(
        child: Container(
          height: 200.mpx,
          child: AspectRatio(
            aspectRatio: 1.5,
            child: Container(color: Colors.blue,),
          ),
        ),
      ),
    );
  }
}