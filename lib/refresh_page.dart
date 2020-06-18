import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/material_footer.dart';
import 'package:flutter_easyrefresh/material_header.dart';

import 'utils.dart';

class RefreshPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RefreshPageState();
  }
}

class _RefreshPageState extends State<RefreshPage> {
  EasyRefreshController _controller = EasyRefreshController();
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Refresh Page",),
      body: EasyRefresh(
        enableControlFinishRefresh: true,
        enableControlFinishLoad: true,
        firstRefresh: true,
        header: MaterialHeader(),
        footer: MaterialFooter(),
        controller: _controller,
        onRefresh: () async {
          await Future.delayed(Duration(milliseconds: 2000), () {
            setState(() {
              _count = 20;
            });
            _controller.finishRefresh(success: true, noMore: false);
          });
        },
        onLoad: () async {
          await Future.delayed(Duration(milliseconds: 2000), () {
            setState(() {
              _count += 20;
            });
            _controller.finishLoad(success: true, noMore: false);
          });
        },
        child: ListView(
          shrinkWrap: true,
          children: [
            for (int i = 0; i < _count; i++) Container(
              width: double.infinity,
              height: 100.mpx,
              child: Center(child: Text("第$i条数据"),),
            ),
          ],
        ),
      ),
    );
  }
}