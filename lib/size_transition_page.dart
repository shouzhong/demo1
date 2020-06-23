import 'package:demo1/my_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class SizeTransitionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SizeTransitionPageState();
  }
}

class _SizeTransitionPageState extends State<SizeTransitionPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
    _animation = Tween(begin: 0.1, end: 1.0).animate(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "SizeTransition Page",),
      body: Container(
        alignment: Alignment.center,
        child: SizeTransition(
          sizeFactor: _animation,
          axis: Axis.horizontal,
          child: Container(
            width: 200.mpx,
            height: 200.mpx,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}