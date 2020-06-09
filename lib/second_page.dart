
import 'package:demo1/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_app_bar.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Second Page"),
      body: Center(
        child:RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("back"),
        )
      )
    );
  }
}