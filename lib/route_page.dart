
import 'package:demo1/align_page.dart';
import 'package:demo1/aspect_ration_page.dart';
import 'package:demo1/center_page.dart';
import 'package:demo1/column_page.dart';
import 'package:demo1/container_page.dart';
import 'package:demo1/custom_multi_child_layout_page.dart';
import 'package:demo1/fitted_box_page.dart';
import 'package:demo1/flow_page.dart';
import 'package:demo1/list_view_page.dart';
import 'package:demo1/padding_page.dart';
import 'package:demo1/row_page.dart';
import 'package:demo1/stack_page.dart';
import 'package:demo1/table_page.dart';
import 'package:demo1/utils.dart';
import 'package:demo1/wrap_page.dart';
import 'package:flutter/material.dart';

import 'my_app_bar.dart';

class RoutePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RoutePageState();
  }
}

class _RoutePageState extends State<RoutePage> {
  List<String> tags = [
    "Container",
    "Padding",
    "Center",
    "Align",
    "FittedBox",
    "AspectRatio",
    "Row",
    "Column",
    "Stack",
    "Flow",
    "Table",
    "Wrap",
    "ListView",
    "CustomMultiChildLayout",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Route Page", isBack: false,),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(30.mpx),
        children: [
          for (String item in tags)
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(10.mpx),
              child: RaisedButton(
                child: Text(item),
                onPressed: () {
                  Widget w =
                    item == "Container" ? ContainerPage() :
                    item == "Padding" ? PaddingPage() :
                    item == "Center" ? CenterPage() :
                    item == "Align" ? AlignPage() :
                    item == "FittedBox" ? FittedBoxPage() :
                    item == "AspectRatio" ? AspectRatioPage() :
                    item == "Row" ? RowPage() :
                    item == "Column" ? ColumnPage() :
                    item == "Stack" ? StackPage() :
                    item == "Flow" ? FlowPage() :
                    item == "Table" ? TablePage() :
                    item == "Wrap" ? WrapPage() :
                    item == "ListView" ? ListViewPage() :
                    item == "CustomMultiChildLayout" ? CustomMultiChildLayoutPage() :
                    null;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => w));
                },
              ),
            ),
        ],
      ),
    );
  }
}