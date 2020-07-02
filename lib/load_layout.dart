import 'package:flutter/material.dart';

typedef OnLoadCallback = Future<void> Function();

class LoadLayoutController {
    void load() {
      if (state != null) state.load();
    }

    void finish() {
      if (state != null) state.finish();
    }

    void error() {
      if (state != null) state.error();
    }

    _LoadLayoutState state;

    void _bindState(_LoadLayoutState state) {
      this.state = state;
    }

    void dispose() {
      this.state = null;
    }
}

class LoadLayout extends StatefulWidget {
  LoadLayout({
    Key key,
    @required this.controller,
    this.firstLoad,
    @required this.onLoad,
    @required this.loadWidget,
    @required this.errorWidget,
    @required this.successWidget
  }) : super(key: key);

  final LoadLayoutController controller;
  final OnLoadCallback onLoad;
  final bool firstLoad;
  final Widget errorWidget;
  final Widget loadWidget;
  final Widget successWidget;

  @override
  State<StatefulWidget> createState() {
    return _LoadLayoutState();
  }
}

class _LoadLayoutState extends State<LoadLayout> {
  int status = -1;

  @override
  void initState() {
    if (widget.firstLoad ?? false) {
      status = 0;
      widget.onLoad.call();
    }
    super.initState();
  }

  @override
  void didChangeDependencies() {
    widget.controller._bindState(this);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: status == 0 ? widget.loadWidget
          : status == 1 ? GestureDetector(
        onTap: () {
          load();
        },
        child: widget.errorWidget,
      )
          : status == 2 ? widget.successWidget : null,
    );
  }

  void load() {
    if (status == 0) return;
    widget.onLoad.call();
    setState(() {
      status = 0;
    });
  }

  void finish() {
    if (status == 2) return;
    setState(() {
      status = 2;
    });
  }

  void error() {
    if (status == 1) return;
    setState(() {
      status = 1;
    });
  }
}