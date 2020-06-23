import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class HeroPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HeroPageState();
  }
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Hero Page",),
      body: Container(
        alignment: Alignment.topCenter,
        child: Hero(
          tag: "tagTest",
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => _HeroTestPage()));
            },
            child: Container(
              width: 100.mpx,
              height: 100.mpx,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

class _HeroTestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HeroTestPageState();
  }
}

class _HeroTestPageState extends State<_HeroTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "_HeroTest Page",),
      body: Container(
        alignment: Alignment.center,
        child: Hero(
          tag: "tagTest",
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