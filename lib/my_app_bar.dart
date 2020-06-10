import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  MyAppBar({@required this.title, this.isBack = true});

  final String title;
  final bool isBack;

  @override
  State<StatefulWidget> createState() => MyAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    if (widget.isBack) {
      return Container(
//      color: Colors.blue,
        child: SafeArea(
          top: true,
          child: Stack(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: size(88),
                    padding: EdgeInsets.only(
                        left: size(30), top: size(24), bottom: size(24)),
                    child: Image.asset(
                      "images/ic_arrow_left.png",
                      width: size(40),
                      height: size(40),
                    ),
                  )),
              Container(
                height: size(88),
                alignment: Alignment.center,
                child: Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size(36), color: Color(0xff333333)),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return Container(
          child: SafeArea(
            top: true,
            child: Container(
              height: size(88),
              alignment: Alignment.center,
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: size(36), color: Color(0xff333333)),
              ),
            ),
          )
      );
    }
  }
}
