import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedCrossFadePageState();
  }
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  bool isFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "AnimatedCrossFade Page",),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isFirst = !isFirst;
            });
          },
          child: AnimatedCrossFade(
            firstChild: Container(
              width: 100.mpx,
              height: 100.mpx,
              color: Colors.blue,
              child: Center(child: Text("123"),),
            ),
            secondChild: Container(
              width: 100.mpx,
              height: 200.mpx,
              color: Colors.red,
              child: Center(child: Text("456"),),
            ),
            crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}