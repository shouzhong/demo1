import 'dart:math';

import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

class DismissiblePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DismissiblePageState();
  }
}

class _DismissiblePageState extends State<DismissiblePage> {
  var _data = <String>[];
  int key = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Dismissible Page",),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        onPressed: () {
            setState(() {
              _data.add(Random().nextInt(1000).toString());
            });
        }
      ),
      body: ListView(
        children: [
          for (int i = 0; i < _data.length; i++)
            Dismissible(
              key: Key((key++).toString()),
              child: ListTile(
                title: Text(_data[i]),
              ),
              onDismissed: (direction) {
                _data.removeAt(i);
              },
              background: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Text("删除",
                  style: TextStyle(
                      color: Colors.white
                  ),
                )
              ),
              secondaryBackground: Container(
                color: Colors.green,
              ),
            ),
        ],
      ),
    );
  }
}