import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  MyAppBar({@required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => MyAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size(88),
//      color: Colors.blue,
      child: SafeArea(
        top: true,
        child: Stack(
          children: [
            Center(
              child: Text(
                widget.title,
                style: TextStyle(fontSize: size(36), color: Color(0xff333333)),
              ),
            )
          ],
        ),
      ),
    );
  }
}