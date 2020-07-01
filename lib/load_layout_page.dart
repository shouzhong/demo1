import 'package:demo1/load_layout.dart';
import 'package:demo1/my_app_bar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'utils.dart';

class LoadLayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadLayoutPageState();
  }
}

class _LoadLayoutPageState extends State<LoadLayoutPage> {
  final _controller = LoadLayoutController();
  String _data;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "LoadLayout Page",),
      body: LoadLayout(
        controller: _controller,
        firstLoad: true,
        onLoad: () async {
          _initNews();
        },
        loadWidget: Container(
          alignment: Alignment.center,
          child: Text("正在加载中..."),
        ),
        errorWidget: Container(
          alignment: Alignment.center,
          child: Text("发生错误了，点击重新加载~~"),
        ),
        successWidget: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.only(left: 30.mpx, right: 30.mpx),
            child: Text(_data ?? ""),
          ),
        ),
      ),
    );
  }

  Future<void> _initNews() async {
    String url = "http://v.juhe.cn/toutiao/index";
    String key = "4c52313fc9247e5b4176aed5ddd56ad7";
    String type = "keji";
    await Dio().get(url, queryParameters: {"type": type, "key": key}).then((value) {
      setState(() {
        _data = value.data.toString();
      });
      _controller.finish();
    }).catchError((e) {
      Fluttertoast.showToast(msg: e.toString());
      _controller.error();
    });
  }
}