import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'utils.dart';

class InputPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputPageState();
  }
}

class _InputPageState extends State<InputPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name;
  String _pwd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Input Page",),
      body: Container(
        padding: EdgeInsets.all(30.mpx),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RawKeyboardListener(
                    focusNode: FocusNode(),
                    child: TextField(),
                    onKey: (event) {
                      if (event is RawKeyDownEvent && event.data is RawKeyEventDataAndroid) {
                        RawKeyDownEvent rawKeyDownEvent = event;
                        RawKeyEventDataAndroid rawKeyEventDataAndroid = rawKeyDownEvent.data;
                        Fluttertoast.showToast(msg: "keycode:${rawKeyEventDataAndroid.keyCode}");
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "账号"),
                    validator: (val) {
                      return val.length < 1 ? "用户名不能为空" : null;
                    },
                    onSaved: (val) {
                      _name = val;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "密码"),
                    obscureText: true,
                    validator: (val) {
                      return val.length < 8 ? "密码长度错误" : null;
                    },
                    onSaved: (val) {
                      _pwd = val;
                    },
                  ),
                  Container(
                    width: 500.mpx,
                    height: 80.mpx,
                    margin: EdgeInsets.only(top: 80.mpx),
                    child: RaisedButton(
                      onPressed: () {
                        var _form = _formKey.currentState;
                        if (!_form.validate()) return;
                        _form.save();
                        Fluttertoast.showToast(msg: "$_name=>$_pwd");
                      },
                      child: Text("提交"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}