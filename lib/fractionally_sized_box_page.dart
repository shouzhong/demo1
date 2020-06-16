import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class FractionallySizedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FractionallySizedBoxPageState();
  }
}

class _FractionallySizedBoxPageState extends State<FractionallySizedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "FractionallySizedBox Page",),
      body: Container(
        alignment: Alignment.center,
        child: Container(
          width: 200.mpx,
          height: 200.mpx,
          color: Colors.blue,
          child: FractionallySizedBox(
            widthFactor: 1.5,
            heightFactor: 0.5,
            child: Container(color: Colors.red,),
          ),
        ),
      ),
    );
  }
}