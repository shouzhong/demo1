import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class FractionalTranslationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FractionalTranslationPageState();
  }
}

class _FractionalTranslationPageState extends State<FractionalTranslationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "FractionalTranslation Page",),
      body: Container(
        alignment: Alignment.center,
        child: FractionalTranslation(
          translation: Offset(0.5, 0.5),
          child: Container(
            width: 200.mpx,
            height: 200.mpx,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}