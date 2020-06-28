import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class LongPressDraggablePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LongPressDraggablePageState();
  }
}

class _LongPressDraggablePageState extends State<LongPressDraggablePage> {
  var _data = <String>["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "LongPressDraggable Page",),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 2.5,
        children: [
          for (int i = 0; i < _data.length; i++)
            LongPressDraggable(
              data: i,
              feedback: _item(_data[i]),
              child: DragTarget<int>(
                builder: (context, data, rejects) {
                  return _item(_data[i]);
                },
                onWillAccept: (data) {
                  return data != i;
                },
                onAccept: (data) {
                  setState(() {
                    _data.insert(i, _data.removeAt(data));
                  });
                },
              ),
            ),
        ],
      ),
    );
  }
  
  Widget _item(String s) {
    return Container(
      width: 250.mpx,
      height: 100.mpx,
      child: Card(
        child: Center(
          child: Text('x = $s'),
        ),
      ),
    );
  }
}