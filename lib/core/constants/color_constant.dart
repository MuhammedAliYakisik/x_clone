import 'dart:ui';

class ColorConstant {
  static final ColorConstant _instance = ColorConstant._init();
  static ColorConstant get instance => _instance;
  ColorConstant._init();

  final primaryColor = const Color(0xFFFFFFFF);
  final secondaryColor = const Color(0xFF1D9BF0);
  final tertiaryColor = const Color(0xFF0F1014);
  final errorColor = const Color(0xD8FF0000);
  final succesfullColor = const Color(0xD800CC00);
  final iconColor = const Color(0xff70757a);
  final unSelectedColor = const Color(0xFFA1ABB2);
  final verifiedColor = const Color(0xff1d9bf0);
  final userNameColor = const Color(0xFFB7B8BA);
  final indicatorColor = const Color(0xff1d9bf0);


}