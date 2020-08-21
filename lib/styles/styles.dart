import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class WStyles {
  WStyles._();

  static const TextStyle temperature = TextStyle(
      fontFamily: 'Poppins',
      color: WColor.primary,
      fontSize: 50.0,
      fontWeight: FontWeight.w600,
      letterSpacing: -5.0);

  static const TextStyle condition = TextStyle(
      fontFamily: 'Poppins',
      color: WColor.info,
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.0);

  static const TextStyle date = TextStyle(
      fontFamily: 'Poppins',
      color: WColor.info,
      fontSize: 13.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.0);

  static const TextStyle region = TextStyle(
      fontFamily: 'Poppins',
      color: WColor.fonts,
      fontSize: 25.0,
      fontWeight: FontWeight.w600);

  static const TextStyle country = TextStyle(
      fontFamily: 'Poppins',
      color: WColor.fonts,
      fontSize: 20.0,
      fontWeight: FontWeight.w600);

  static const TextStyle info = TextStyle(
      fontFamily: 'Poppins',
      color: WColor.fonts,
      fontSize: 14.0,
      fontWeight: FontWeight.w400);

  static const TextStyle hourly = TextStyle(
      fontFamily: 'Poppins',
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.w600);

  static const TextStyle hourlytemperature = TextStyle(
      fontFamily: 'Poppins',
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.w400);

  static double deviceWidth(BuildContext context) {
    double width;
    width = MediaQuery.of(context).size.width;
    return width;
  }

  static double deviceHeight(BuildContext context) {
    double height;
    height = MediaQuery.of(context).size.height;
    return height;
  }
}
