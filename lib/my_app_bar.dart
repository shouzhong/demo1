import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  MyAppBar({this.title, this.isBack = true, this.widget,});

  final String title;
  final bool isBack;
  final Widget widget;

  @override
  State<StatefulWidget> createState() => MyAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.blue,
      child: SafeArea(
        top: true,
        child: Container(
          height: 88.mpx,
          child: Stack(
            children: [
              if (widget.isBack)
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 30.mpx, top: 26.mpx, bottom: 26.mpx),
                      child: Image.asset(
                        "images/ic_arrow_left.png",
                        width: 36.mpx,
                        height: 36.mpx,
                      ),
                    ),
                ),
              if (widget.title != null)
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36.mpx, color: Color(0xff333333)),
                  ),
                ),
              if (widget.widget != null)
                widget.widget,
            ],
          ),
        ),
      ),
    );
  }
}
