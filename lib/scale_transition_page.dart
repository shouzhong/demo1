import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class ScaleTransitionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScaleTransitionPageState();
  }
}

class _ScaleTransitionPageState extends State<ScaleTransitionPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(duration: const Duration(milliseconds: 200), vsync: this);
    _animation = Tween(begin: 1.5, end: 1.0).animate(_controller);
//    _animation.addListener(() {
//      setState(() {
//      });
//    });
    _animation.addStatusListener((status) {
      //执行完成后反向执行
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        //反向执行完成，正向执行
        _controller.forward();
      }
    });
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
      appBar: MyAppBar(title: "ScaleTransition Page",),
      body: Container(
        alignment: Alignment.center,
        child: ScaleTransition(
          scale: _animation,
          child: Container(
            alignment: Alignment.center,
            width: 200.mpx,
            height: 200.mpx,
            color: Colors.blue,
            child: Text("text"),
          ),
        ),
      ),
    );
  }
}