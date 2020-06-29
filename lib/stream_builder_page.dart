import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

class StreamBuilderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StreamBuilderPageState();
  }
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "StreamBuilder Page",),
      body: Container(
        alignment: Alignment.center,
        child: StreamBuilder<int>(
          stream: _counter(),
          builder: (context, snapshot) {
            if (snapshot.hasError)
              return Text('Error: ${snapshot.error}');
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Text('没有Stream');
              case ConnectionState.waiting:
                return Text('等待数据...');
              case ConnectionState.active:
                return Text('active: ${snapshot.data}');
              case ConnectionState.done:
                return Text('Stream已关闭');
            }
            return null;
          }
        ),
      ),
    );
  }

  Stream<int> _counter() {
    return Stream.periodic(Duration(seconds: 1), (i) {
      return i;
    });
  }
}