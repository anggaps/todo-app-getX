import 'package:flutter/material.dart';

const Color bluishClr = Color(0xff4e5ae8);
const Color yellowClr = Color(0xffffb746);
const Color pinkClr = Colors.pink;
const Color white = Colors.white;
const Color primaryColor = bluishClr;
const Color darkGreyClr = Color(0xff121212);
Color darkHeaderClr = Colors.grey.shade800;

class Themes {
  static final light = ThemeData(
    primaryColor: primaryColor,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    primaryColor: darkGreyClr,
    brightness: Brightness.dark,
  );
}
