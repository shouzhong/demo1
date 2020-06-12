import 'package:demo1/my_app_bar.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlowPageState();
  }
}

class _FlowPageState extends State<FlowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Flow Page",),
      body: Flow(
        delegate: _TestFlowDelegate(margin: EdgeInsets.all(size(10))),
        children: [
          Container(
            width: size(300),
            height: size(100),
            color: Color(0xffff0000),
          ),
          Container(
            width: size(200),
            height: size(100),
            color: Color(0xff00ff00),
          ),
          Container(
            width: size(200),
            height: size(100),
            color: Color(0xff0000ff),
          ),
          Container(
            width: size(400),
            height: size(100),
            color: Color(0xffff0000),
          ),
        ],
      ),
    );
  }
}

class _TestFlowDelegate extends FlowDelegate {

  EdgeInsets margin = EdgeInsets.zero;

  _TestFlowDelegate({this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;

    for (var i = 0; i < context.childCount; i++) {
      var w = x + context
          .getChildSize(i)
          .width + margin.right;
      if (w < context.size.width) {
        context.paintChild(
            i, transform: new Matrix4.translationValues(x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y = y + context
            .getChildSize(i)
            .height + margin.bottom;
        context.paintChild(
            i, transform: new Matrix4.translationValues(x, y, 0.0));
        x = x + context
            .getChildSize(i)
            .width + margin.right + margin.left;
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }

  //  是否需要重新布局。
  @override
  bool shouldRelayout(FlowDelegate oldDelegate) {
    return super.shouldRelayout(oldDelegate);
  }

  //设置Flow的尺寸
  @override
  Size getSize(BoxConstraints constraints) {
    return super.getSize(constraints);
  }

  //  设置每个child的布局约束条件
  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return super.getConstraintsForChild(i, constraints);
  }
}
