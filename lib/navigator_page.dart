import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

class NavigatorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavigatorPageState();
  }
}
class _NavigatorPageState extends State<NavigatorPage> {
  String _s = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Navigator Page",),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(_s),
            RaisedButton(
              child: Text("next"),
              onPressed: () async {
                final result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return _TestPage(value: "我是传递过去的数据");
                }));
                setState(() {
                  _s = result;
                });
              }
            ),
          ],
        ),
      ),
    );
  }
}

class _TestPage extends StatefulWidget {

  _TestPage({Key key, @required this.value}) : super(key: key);

  final String value;

  @override
  State<StatefulWidget> createState() {
    return _TestPageState();
  }
}

class _TestPageState extends State<_TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Navigator Page",),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(widget.value),
            RaisedButton(
                child: Text("back"),
                onPressed: () {
                  Navigator.pop(context, "我是返回的数据");
                }
            ),
          ],
        ),
      ),
    );
  }
}