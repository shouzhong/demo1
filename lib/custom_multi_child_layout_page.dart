import 'package:demo1/my_app_bar.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class CustomMultiChildLayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomMultiChildLayoutPageState();
  }
}

class _CustomMultiChildLayoutPageState extends State<CustomMultiChildLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "CustomMultiChildLayout Page"),
      body: CustomMultiChildLayout(
        delegate: _CustomMultiChildLayoutPageDelegate(),
        children: [
          LayoutId(
            id: _CustomMultiChildLayoutPageDelegate.actionBar,
            child: Text(_CustomMultiChildLayoutPageDelegate.actionBar),
          ),
          LayoutId(
            id: _CustomMultiChildLayoutPageDelegate.body,
            child: Text(_CustomMultiChildLayoutPageDelegate.body),
          ),
        ],
      ),
    );
  }
}

class _CustomMultiChildLayoutPageDelegate extends MultiChildLayoutDelegate {
  static const String actionBar = 'action_bar';
  static const String body = 'body';

  @override
  void performLayout(Size size) {//布局
    //布局actionbar
    Size actionBarSize = layoutChild(actionBar,
        new BoxConstraints(maxHeight: size.height, maxWidth: size.width));
    //offset（0，0），放在顶部
    positionChild(actionBar, Offset(0.0, 0.0));
    //布局body，约束为剩下的空间
    layoutChild(body, BoxConstraints.tight(Size(size.width, size.height)));
    //offset（0，actionbar高度），排在actionbar下方
    positionChild(body, Offset(0.0, actionBarSize.height));
  }

  //是否需要重新布局
  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    return false;
  }
}