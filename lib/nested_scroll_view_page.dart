import 'package:flutter/material.dart';

import 'utils.dart';

class NestedScrollViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NestedScrollViewPageState();
  }
}

class _NestedScrollViewPageState extends State<NestedScrollViewPage> {
  final _tabs = ["TabA", "TabB", "TabC"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: _tabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerScrolled) => [
            SliverAppBar(
              pinned: true,
              forceElevated: innerScrolled,
              title: Text("NestedScrollView Page"),
              expandedHeight: 400.mpx,
              flexibleSpace: Container(color: Colors.blue,),
              bottom: TabBar(tabs: [
                for (String s in _tabs) Container(
                  alignment: Alignment.center,
                  height: 80.mpx,
                  child: Text(
                    s,
                    style: TextStyle(fontSize: 28.mpx),
                  ),
                ),
              ]),
            ),
          ],
          body: TabBarView(
              children: [
                for (String s in _tabs) ListView(
                  children: [
                    for (int i = 0; i < 20; i++) Container(
                      width: double.infinity,
                      height: 120.mpx,
                      alignment: Alignment.center,
                      child: Text("$s:第$i项数据"),
                    )
                  ],
                )
              ],
          ),
        ),
      ),
    );
  }
}