import 'package:demo1/my_app_bar.dart';
import 'package:demo1/utils.dart';
import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TablePageState();
  }
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Table Page",),
      body: Center(
        child: Table(
          columnWidths: {
            0: FixedColumnWidth(size(200)),
            1: FixedColumnWidth(size(400)),
            2: FixedColumnWidth(size(100)),
          },
          border: TableBorder.all(
            color: Color(0xff333333),
            width: size(2),
            style: BorderStyle.solid
          ),
          children: [
            TableRow(decoration: BoxDecoration(color: Colors.grey), children: [
              Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "姓名",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "性别",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "年龄",
                    style: TextStyle(color: Colors.white),
                  )),
            ]),
            for (int i = 0; i < 10; i++)
              TableRow(children: [
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: Text("张三"),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: Text("男"),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: Text("20"),
                ),
              ]),
          ],
        ),
      ),
    );
  }
}