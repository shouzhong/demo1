import 'dart:ui';

import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class BackdropFilterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BackdropFilterPageState();
  }
}

class _BackdropFilterPageState extends State<BackdropFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "BackdropFilter Page",),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 500.mpx,
            height: 500.mpx,
            child: Image.network("https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2534506313,1688529724&fm=26&gp=0.jpg"),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2.0,sigmaY: 2.0),
            child: Center(
              child: Container(
                color: Colors.red.withOpacity(0),
              ),
            ),
          )
        ],
      ),
    );
  }
}