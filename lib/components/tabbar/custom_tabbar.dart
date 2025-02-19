import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constant.dart';
import '../../core/constants/string_constant.dart';

class CustomTabbar extends StatefulWidget implements PreferredSizeWidget {
  const CustomTabbar({super.key});

  @override
  State<CustomTabbar> createState() => _CustomTabbarState();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _CustomTabbarState extends State<CustomTabbar> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: ColorConstant.instance.unSelectedColor,
      indicatorColor: ColorConstant.instance.indicatorColor,
      labelStyle: TextStyle(
        fontSize: 16,
        color: ColorConstant.instance.primaryColor,
        fontWeight: FontWeight.bold,
      ),
      labelColor: ColorConstant.instance.tertiaryColor,
      tabs: [
        Tab(text: StringConstant.instance.tabBarFirstText),
        Tab(text: StringConstant.instance.tabBarSecondText),
      ],
    );
  }

}
