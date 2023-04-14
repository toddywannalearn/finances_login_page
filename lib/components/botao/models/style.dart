import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Style {
  Color? backgroundColor;
  Color? color;
  double? width;
  double? height;
  EdgeInsetsGeometry? padding;
  BorderRadius? borderRadius;
  Border? border;

  Style(
      {this.backgroundColor,
        this.color,
        this.width,
        this.height,
        this.padding,
        this.borderRadius,
        this.border});
}