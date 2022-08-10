import 'package:flutter/material.dart';

class FrontEndConfigs {
  static const kPrimaryColor = Color(0xff137EC1);
  static const kSubTextColor = Color(0xff898B8D);
  static const kBlackColor = Color(0xff0A0A0A);
  static const kWhiteColor = Colors.white;
  static const kLinearGradient = LinearGradient(colors: [
    kPrimaryColor,
    Color(0xff0A3F61),
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
  static BoxShadow kInnerShadow = BoxShadow(
      color: Colors.black.withOpacity(0.16),
      blurRadius: 6,
      offset: const Offset(0, -3));
  static BoxShadow kDropShadow = BoxShadow(
      color: Colors.black.withOpacity(0.16),
      blurRadius: 6,
      offset: const Offset(0, 3));
}
