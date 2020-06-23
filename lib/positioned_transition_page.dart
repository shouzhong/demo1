import 'package:demo1/my_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class PositionedTransitionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PositionedTransitionPageState();
  }
}

class _PositionedTransitionPageState extends State<PositionedTransitionPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<RelativeRect> _animation;

  @override
  void initState() {
    _controller = AnimationController(duration: const Duration(milliseconds: 3000), vsync: this);
    _animation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(200.mpx, 200.mpx, 200.mpx, 200.mpx),
      end: RelativeRect.fromLTRB(50.mpx, 50.mpx, 50.mpx, 50.mpx),
    ).animate(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "PositionedTransition Page",),
      body: Stack(
        children: [
          PositionedTransition(
            rect: _animation,
            child: Container(color: Colors.blue,),
          )
        ],
      ),
    );
  }
}