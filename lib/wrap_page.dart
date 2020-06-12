import 'package:demo1/my_app_bar.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WrapPageState();
  }
}

class _WrapPageState extends State<WrapPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Wrap Page",),
      body: Wrap(
        children: [
          for(int i = 0; i < 10; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent.withAlpha(60), width: size(2)),
                borderRadius: BorderRadius.all(Radius.circular(size(10)))
              ),
              child: Container(
                margin: EdgeInsets.all(size(20)),
                child: Text("item$i"),
              ),
            ),
        ],
      ),
    );
  }
}