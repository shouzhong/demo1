import 'package:demo1/load_state.dart';
import 'package:demo1/my_app_bar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FutureBuilderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FutureBuilderPageState();
  }
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {

  LoadState _loadState = LoadState.State_Loading;
  String _data = "";

  @override
  Widget build(BuildContext context) {
    if (_loadState == LoadState.State_Loading) _getNews();
    return Scaffold(
      appBar: MyAppBar(title: "FutureBuilder Page",),
      body: LoadStateLayout(
        state: _loadState,
        errorRetry: () {
          setState(() {
            _loadState = LoadState.State_Loading;
          });
        },
        successWidget: Center(
          child: Text(_data),
        ),
      ),
    );
  }
  

  Future<Response> _getNews() async {
    String url = "http://v.juhe.cn/toutiao/index";
    String key = "4c52313fc9247e5b4176aed5ddd56ad7";
    String type = "keji";
    return await Dio().get(url, queryParameters: {"type": type, "key": key}).then((value) {
      _data = value.data.toString();
      setState(() {
        _loadState = LoadState.State_Success;
      });
    }).catchError((e) {
      Fluttertoast.showToast(msg: e.toString());
      setState(() {
        _loadState = LoadState.State_Error;
      });
    });
  }
}