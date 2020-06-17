import 'package:flutter/material.dart';

enum LoadState { State_Success, State_Error, State_Loading }

class LoadStateLayout extends StatefulWidget {
  final LoadState state; //页面状态
  final Widget successWidget;//成功视图
  final VoidCallback errorRetry; //错误事件处理

  LoadStateLayout(
      {Key key,
        this.state = LoadState.State_Loading,//默认为加载状态
        this.successWidget,
        this.errorRetry,
      })
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoadStateLayoutState();
}

class _LoadStateLayoutState extends State<LoadStateLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: _buildWidget,
    );
  }

  /// 根据不同状态来显示不同的视图
  Widget get _buildWidget {
    switch (widget.state) {
      case LoadState.State_Success:
        return widget.successWidget;
        break;
      case LoadState.State_Error:
        return _errorView;
        break;
      case LoadState.State_Loading:
        return _loadingView;
        break;
      default:
        return null;
    }
  }

  /// 加载中视图
  Widget get _loadingView {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Container(
        child: Text("正在加载中..."),
      ),
    );
  }

  /// 错误视图
  Widget get _errorView {
    return GestureDetector(
      onTap: widget.errorRetry,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text("发生错误了，点击重新加载！"),
        ),
      ),
    );
  }
}