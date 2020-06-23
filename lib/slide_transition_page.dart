import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class SlideTransitionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SlideTransitionPageState();
  }
}

class _SlideTransitionPageState extends State<SlideTransitionPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _animation;

  @override
  void initState() {
    _controller = AnimationController(duration: Duration(milliseconds: 2000), vsync: this);
    _animation = Tween<Offset>(
      begin: Offset(-1.0, -1.0),
      end: Offset(0.0, 0.0),
    ).animate(_controller);
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
      appBar: MyAppBar(title: "SlideTransition Page",),
      body: Container(
        alignment: Alignment.center,
        child: SlideTransition(
          position: _animation,
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