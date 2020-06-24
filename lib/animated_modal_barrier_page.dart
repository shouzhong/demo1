import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

class AnimatedModalBarrierPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedModalBarrierPageState();
  }
}

class _AnimatedModalBarrierPageState extends State<AnimatedModalBarrierPage> with SingleTickerProviderStateMixin {
  Animation<Color> _animation;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(duration: const Duration(milliseconds: 3000), vsync: this);
    _animation = ColorTween(
      begin: Colors.red,
      end: Colors.blue
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
      appBar: MyAppBar(title: "AnimatedModalBarrier Page",),
      body: Container(
        alignment: Alignment.center,
        child: AnimatedModalBarrier(
          color: _animation,
        ),
      ),
    );
  }
}