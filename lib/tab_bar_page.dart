import 'package:demo1/my_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class TabBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabBarPageState();
  }
}

class _TabBarPageState extends State<TabBarPage> with SingleTickerProviderStateMixin {
  final _tabs = ["TabA", "TabB", "TabC"];
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "TabBar Page",),
      body: DefaultTabController(
        length: _tabs.length,
        child: Column(
          children: [
            TabBar(
              tabs: [
                for (String s in _tabs) Container(
                  alignment: Alignment.center,
                  height: 80.mpx,
                  child: Text(
                    s,
                    style: TextStyle(fontSize: 28.mpx),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
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