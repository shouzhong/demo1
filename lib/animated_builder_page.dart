import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class AnimatedBuilderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedBuilderPageState();
  }
}

class _AnimatedBuilderPageState extends State<AnimatedBuilderPage> with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(duration: const Duration(milliseconds: 3000), vsync: this);
    _animation = Tween(begin: 0.0, end: 200.mpx).animate(_controller);
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
      appBar: MyAppBar(title: "AnimatedBuilder Page",),
      body: Container(
        alignment: Alignment.center,
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, widget) {
            return Container(
              width: _animation.value,
              height: _animation.value,
              color: Colors.blue,
            );
          },
        ),
      ),
    );
  }
}