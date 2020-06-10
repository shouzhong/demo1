import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_app_bar.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Second Page"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: "https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1906469856,4113625838&fm=26&gp=0.jpg",
              width: size(200),
              height: size(200),
            ),
            Image.network(
              "https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1906469856,4113625838&fm=26&gp=0.jpg",
              width: size(200),
              height: size(200),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("back"),
            )
          ],
        ),
//        child:RaisedButton(
//          onPressed: () {
//            Navigator.pop(context);
//          },
//          child: Text("back"),
//        )
      )
    );
  }
}