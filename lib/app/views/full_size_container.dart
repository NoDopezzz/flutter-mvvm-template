import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullSizeContainer extends StatelessWidget {
  Widget Function(BoxConstraints constraints) _getChild;
  EdgeInsetsGeometry _padding = EdgeInsets.all(20);
  Future<bool> Function() _onWillPop = () async {return true;};

  FullSizeContainer({
    @required Widget Function(BoxConstraints constraints) getChild,
    EdgeInsetsGeometry padding,
    Future<bool> Function() onWillPop,
  }) {
    _getChild = getChild;
    if (padding != null) _padding = padding;
    if (onWillPop != null) _onWillPop = onWillPop;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:_onWillPop,
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraint) =>
              SingleChildScrollView(
                padding: _padding,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: _getChild(constraint),
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
