import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonView extends StatelessWidget {
  double _height;
  double _width;
  EdgeInsets _margin;
  Alignment _alignment;

  SkeletonView({
    double height,
    double width,
    EdgeInsets margin,
    Alignment alignment,
  }) {
    _height = height;
    _width = width;
    _margin = margin != null ? margin : 0;
    _alignment = alignment;
  }

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[200],
      highlightColor: Colors.grey[50],
      enabled: true,
      child: Container(
        alignment: _alignment,
        child: Container(
          height: _height,
          width: _width,
          margin: _margin,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
