import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constant.dart';

class CustomTabbar extends StatelessWidget implements PreferredSizeWidget {
  final List<Tab> tabs;
  const CustomTabbar({super.key, required this.tabs});

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
      tabs: tabs,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);

}