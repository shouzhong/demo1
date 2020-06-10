import 'dart:ui';

import 'package:flutter/material.dart';

final double screenWidth = MediaQueryData.fromWindow(window).size.width;
final double screenHeight = MediaQueryData.fromWindow(window).size.height;

final int adaptWidth = 750;

double size(double d) {
  return d * screenWidth / adaptWidth;
}