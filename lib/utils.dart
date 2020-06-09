import 'dart:ui';

import 'package:flutter/material.dart';

double screenWidth = MediaQueryData.fromWindow(window).size.width;
double screenHeight = MediaQueryData.fromWindow(window).size.height;

int adaptWidth = 750;

double size(double d) {
  return d * screenWidth / adaptWidth;
}