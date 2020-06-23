
import 'package:demo1/rotation_transition_page.dart';
import 'package:demo1/align_page.dart';
import 'package:demo1/animated_builder_page.dart';
import 'package:demo1/animated_container_page.dart';
import 'package:demo1/animated_cross_fade_page.dart';
import 'package:demo1/aspect_ratio_page.dart';
import 'package:demo1/baseline_page.dart';
import 'package:demo1/center_page.dart';
import 'package:demo1/column_page.dart';
import 'package:demo1/constrained_box_page.dart';
import 'package:demo1/container_page.dart';
import 'package:demo1/custom_multi_child_layout_page.dart';
import 'package:demo1/custom_single_child_layout_page.dart';
import 'package:demo1/decorated_box_transition_page.dart';
import 'package:demo1/fade_transition_page.dart';
import 'package:demo1/fitted_box_page.dart';
import 'package:demo1/flow_page.dart';
import 'package:demo1/fractionally_sized_box_page.dart';
import 'package:demo1/future_builder_page.dart';
import 'package:demo1/grid_view_page.dart';
import 'package:demo1/hero_page.dart';
import 'package:demo1/image_page.dart';
import 'package:demo1/input.dart';
import 'package:demo1/intrinsic_page.dart';
import 'package:demo1/list_view_page.dart';
import 'package:demo1/load_page.dart';
import 'package:demo1/overflow_box_page.dart';
import 'package:demo1/padding_page.dart';
import 'package:demo1/positioned_transition_page.dart';
import 'package:demo1/refresh_indicator_page.dart';
import 'package:demo1/refresh_page.dart';
import 'package:demo1/row_page.dart';
import 'package:demo1/size_transition_page.dart';
import 'package:demo1/sized_box_page.dart';
import 'package:demo1/slide_transition_page.dart';
import 'package:demo1/stack_page.dart';
import 'package:demo1/table_page.dart';
import 'package:demo1/text_page.dart';
import 'package:demo1/transform_page.dart';
import 'package:demo1/utils.dart';
import 'package:demo1/wrap_page.dart';
import 'package:flutter/material.dart';

import 'scale_transition_page.dart';
import 'limited_box_page.dart';
import 'my_app_bar.dart';
import 'offstage_page.dart';

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
    "ConstrainedBox",
    "Baseline",
    "FractionallySizedBox",
    "Intrinsic",
    "LimitedBox",
    "Offstage",
    "OverflowBox",
    "SizedBox",
    "Transform",
    "CustomSingleChildLayout",
    "Row",
    "Column",
    "Stack",
    "Flow",
    "Table",
    "Wrap",
    "ListView",
    "CustomMultiChildLayout",
    "GridView",
    "RefreshIndicator",
    "Text",
    "Image",
    "Input",
    "AnimatedContainer",
    "AnimatedCrossFade",
    "Hero",
    "AnimatedBuilder",
    "DecoratedBoxTransition",
    "FadeTransition",
    "PositionedTransition",
    "RotationTransition",
    "ScaleTransition",
    "SizeTransition",
    "SlideTransition",
    "FutureBuilder",
    "Load",
    "Refresh",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Route Page", isBack: false,),
      body: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 3,
        children: [
          for (String item in tags)
            GestureDetector(
              onTap: () {
                Widget w =
                item == "Container" ? ContainerPage() :
                item == "Padding" ? PaddingPage() :
                item == "Center" ? CenterPage() :
                item == "Align" ? AlignPage() :
                item == "FittedBox" ? FittedBoxPage() :
                item == "AspectRatio" ? AspectRatioPage() :
                item == "ConstrainedBox" ? ConstrainedBoxPage() :
                item == "Baseline" ? BaselinePage() :
                item == "FractionallySizedBox" ? FractionallySizedBoxPage() :
                item == "Intrinsic" ? IntrinsicPage() :
                item == "LimitedBox" ? LimitedBoxPage() :
                item == "Offstage" ? OffstagePage() :
                item == "OverflowBox" ? OverflowBoxPage() :
                item == "SizedBox" ? SizedBoxPage() :
                item == "Transform" ? TransformPage() :
                item == "CustomSingleChildLayout" ? CustomSingleChildLayoutPage() :
                item == "Row" ? RowPage() :
                item == "Column" ? ColumnPage() :
                item == "Stack" ? StackPage() :
                item == "Flow" ? FlowPage() :
                item == "Table" ? TablePage() :
                item == "Wrap" ? WrapPage() :
                item == "ListView" ? ListViewPage() :
                item == "CustomMultiChildLayout" ? CustomMultiChildLayoutPage() :
                item == "GridView" ? GridViewPage() :
                item == "RefreshIndicator" ? RefreshIndicatorPage() :
                item == "Text" ? TextPage() :
                item == "Image" ? ImagePage() :
                item == "Input" ? InputPage() :
                item == "AnimatedContainer" ? AnimatedContainerPage() :
                item == "AnimatedCrossFade" ? AnimatedCrossFadePage() :
                item == "Hero" ? HeroPage() :
                item == "AnimatedBuilder" ? AnimatedBuilderPage() :
                item == "DecoratedBoxTransition" ? DecoratedBoxTransitionPage() :
                item == "FadeTransition" ? FadeTransitionPage() :
                item == "PositionedTransition" ? PositionedTransitionPage() :
                item == "RotationTransition" ? RotationTransitionPage() :
                item == "ScaleTransition" ? ScaleTransitionPage() :
                item == "SizeTransition" ? SizeTransitionPage() :
                item == "SlideTransition" ? SlideTransitionPage() :
                item == "FutureBuilder" ? FutureBuilderPage() :
                item == "Load" ? LoadPage() :
                item == "Refresh" ? RefreshPage() :
                null;
                Navigator.push(context, MaterialPageRoute(builder: (context) => w));
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(item),
              ),
            ),
        ],
      ),
    );
  }
}