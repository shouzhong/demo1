import 'package:demo1/my_app_bar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class FutureBuilderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FutureBuilderPageState();
  }
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "FutureBuilder Page",),
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return FutureBuilder(
      future: _getNews(),
      builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
        if (snapshot.hasData) {
          return Text("${snapshot.data.toString()}");
        } else if (snapshot.hasError) {
          return Center(
            child: Text("${snapshot.error.toString()}"),
          );
        } else {
          return Center(
            child: Text("正在加载中"),
          );
        }
      },
    );
  }

  Future<Response> _getNews() async {
    await Future.delayed(Duration(seconds: 3));
    String url = "http://v.juhe.cn/toutiao/index";
    String key = "4c52313fc9247e5b4176aed5ddd56ad7";
    String type = "keji";
    return await Dio().get(url, queryParameters: {"type": type, "key": key});
  }
}