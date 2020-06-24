import 'dart:math';

import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

class AnimatedListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedListPageState();
  }
}

class _AnimatedListPageState extends State<AnimatedListPage> {
  var _myListKey = GlobalKey<AnimatedListState>();
  var _tween = Tween<Offset>(
    begin: Offset(1.0, 0.0),
    end: Offset(0.0, 0.0)
  );
  var _data = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "AnimatedList Page",),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _data.add(Random().nextInt(1000).toString());
          _myListKey.currentState.insertItem(_data.length - 1);
        },
      ),
      body: AnimatedList(
        key: _myListKey,
        initialItemCount: _data.length,
        itemBuilder: (context, index, animation) {
          return _listItem(index, _data[index], animation);
        },
      ),
    );
  }

  Widget _listItem(int index, String s, Animation animation) {
    return SlideTransition(
      position: animation.drive(_tween),
      child: ListTile(
        title: Text(s),
        trailing: IconButton(
          icon: Icon(Icons.delete_forever),
          onPressed: () {
            _myListKey.currentState.removeItem(index, (context, animation) => _listItem(index, _data.removeAt(index), animation));
          },
        ),
      ),
    );
  }
}