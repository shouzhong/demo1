import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class TextPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextPageState();
  }
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Text Page",),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30.mpx),
            alignment: Alignment.center,
            child: Text("text", style: TextStyle(fontSize: 30.mpx, color: Colors.blue),),
          ),
          Container(
            padding: EdgeInsets.all(30.mpx),
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: "richText",
                style: TextStyle(fontSize: 30.mpx, color: Colors.blue),
                children: [
                  TextSpan(
                    text: "aaaaaa",
                    style: TextStyle(fontSize: 30.mpx, color: Colors.red),
                  ),
                  TextSpan(
                    text: "bbbbbb",
                    style: TextStyle(fontSize: 30.mpx, color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}