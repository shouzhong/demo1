import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class DecoratedBoxTransitionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DecoratedBoxTransitionPageState();
  }
}

class _DecoratedBoxTransitionPageState extends State<DecoratedBoxTransitionPage> with SingleTickerProviderStateMixin {
  Animation<Decoration> _animation;
  AnimationController _controller;
  Animation _curve;

  @override
  void initState() {
    _controller = AnimationController(duration: const Duration(milliseconds: 3000), vsync: this);
    _curve = CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
    _animation = DecorationTween(
      begin: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0.mpx)),
        color: Colors.red,
      ),
      end: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.mpx)),
        color: Colors.green,
      ),
    ).animate(_curve);
    //启动动画
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
      appBar: MyAppBar(title: "DecoratedBoxTransition Page",),
      body: Container(
        alignment: Alignment.center,
        child: DecoratedBoxTransition(
          position: DecorationPosition.background,
          decoration: _animation,
          child: Container(
            width: 200.mpx,
            height: 200.mpx,
          ),
        ),
      ),
    );
  }
}