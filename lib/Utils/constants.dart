import 'package:flutter/material.dart';

import 'SizeConfig.dart';

const Color tc = Color(0xff979797);
const Color wc = Colors.white;
const Color dc = Color(0xff263238);
const Color blc = Color(0xff0099ff);

TextStyle txtS(Color col, double siz, FontWeight wg) {
  return TextStyle(
    color: col,
    fontWeight: wg,
    fontSize: SizeConfig.screenHeight / 900 * siz,
  );
}

SizedBox sh(double h) {
  return SizedBox(height: h * SizeConfig.screenHeight / 900);
}

SizedBox sb(double b) {
  return SizedBox(width: b * SizeConfig.screenWidth / 1440);
}
