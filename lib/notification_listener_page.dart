import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class NotificationListenerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NotificationListenerPageState();
  }
}

class _NotificationListenerPageState extends State<NotificationListenerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "NotificationListener Page",),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          ScrollMetrics metrics = notification.metrics;
          print("当前位置：${metrics.pixels}");// 当前位置
          print("是否在顶部或底部：${metrics.atEdge}");//是否在顶部或底部
          print("垂直或水平滚动：${metrics.axis}");//垂直或水平滚动
          print("滚动方向是down还是up：${metrics.axisDirection}");// 滚动方向是down还是up
          print("视口底部距离列表底部有多大：${metrics.extentAfter}");//视口底部距离列表底部有多大
          print("视口顶部距离列表顶部有多大：${metrics.extentBefore}");//视口顶部距离列表顶部有多大
          print("视口范围内的列表长度：${metrics.extentInside}");//视口范围内的列表长度
          print("最大滚动距离，列表长度-视口长度：${metrics.maxScrollExtent}");//最大滚动距离，列表长度-视口长度
          print("最小滚动距离：${metrics.minScrollExtent}");//最小滚动距离
          print("视口长度：${metrics.viewportDimension}");//视口长度
          print("是否越过边界：${metrics.outOfRange}");//是否越过边界
          print('------------------------');
          return true;
        },
        child: ListView(
          shrinkWrap: true,
          children: [
            for (int i = 0; i < 20; i++) Container(
              width: double.infinity,
              height: 120.mpx,
              alignment: Alignment.center,
              child: Text("数据：$i"),
            ),
          ],
        ),
      ),
    );
  }
}