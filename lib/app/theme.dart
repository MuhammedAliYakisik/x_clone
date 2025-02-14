import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:x_clone/core/constants/color_constant.dart';

final theme = ThemeData.light().copyWith(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      actionsIconTheme:IconThemeData(
          color: ColorConstant.instance.primaryColor
      ),
  ),
  tabBarTheme: TabBarTheme(labelColor: Colors.black),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
  useMaterial3: true,
);