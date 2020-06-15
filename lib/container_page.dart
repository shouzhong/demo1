import 'package:demo1/my_app_bar.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContainerPageState();
  }
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Container Page",
        widget: Container(
          padding: EdgeInsets.only(right: 30.mpx),
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text("完成", style: TextStyle(color: Color(0xff333333), fontSize: 30.mpx),),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(30.mpx),
        padding: EdgeInsets.all(30.mpx),
        color: Colors.blue,
        child: Text("text"),
      ),
    );
  }
}