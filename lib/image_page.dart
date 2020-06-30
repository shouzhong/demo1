import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class ImagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImagePageState();
  }
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Image Page",),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Image.asset(
              "images/ic_house.png",
              width: 100.mpx,
              height: 100.mpx,
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Image.asset(
              "images/ic_house.png",
              width: 100.mpx,
              height: 100.mpx,
              color: Colors.green,
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Image.network(
              "https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3892521478,1695688217&fm=26&gp=0.jpg",
              width: 100.mpx,
              height: 100.mpx,
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Icon(
              Icons.ac_unit,
              size: 100.mpx,
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Icon(
              Icons.ac_unit,
              color: Colors.red,
              size: 100.mpx,
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: ImageIcon(
              AssetImage("images/ic_house.png"),
              size: 100.mpx,
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: ImageIcon(
              AssetImage("images/ic_house.png"),
              size: 100.mpx,
              color: Colors.blue,
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: CachedNetworkImage(
              height: 100.mpx,
              imageUrl: "https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3984473917,238095211&fm=26&gp=0.jpg",
            ),
          ),
        ],
      ),
    );
  }
}