import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_clone/core/constants/color_constant.dart';

final theme = ThemeData.light().copyWith(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      actionsIconTheme:IconThemeData(
          color: ColorConstant.instance.primaryColor
      ),
  ),
  tabBarTheme: TabBarTheme(labelColor: ColorConstant.instance.tertiaryColor),
  colorScheme: ColorScheme.fromSeed(seedColor: ColorConstant.instance.secondaryColor),
  useMaterial3: true,
  drawerTheme: DrawerThemeData(
    backgroundColor: ColorConstant.instance.primaryColor,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: ColorConstant.instance.secondaryColor
  ),
  textTheme: GoogleFonts.robotoTextTheme(
    ThemeData.light().textTheme,
  ),
  scaffoldBackgroundColor: ColorConstant.instance.primaryColor

);