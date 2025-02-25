import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:x_clone/core/extension/context_extension.dart';

import '../../core/constants/color_constant.dart';
import '../../core/constants/string_constant.dart';

class MentionersView extends StatelessWidget {
  const MentionersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: context.paddingNormalHorizontal.horizontal,vertical: context.paddingNormalVertical.vertical),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: context.lowHeightValue,
            children: [

              _headerText(context),

              _contentText(context),

            ],
          ),
        ),
      ),
    );
  }
}
Text _contentText(BuildContext context) {
  return Text(StringConstant.instance
      .mentionersContentText,
    style: context.textTheme.titleMedium?.copyWith(
        color: ColorConstant.instance.iconColor,fontFamily: "Roboto",fontWeight: FontWeight.w400
    ),);
}

Text _headerText(BuildContext context) {
  return Text(StringConstant.instance.mentionersHeaderText,style: context.textTheme.headlineLarge?.copyWith(
      color: ColorConstant.instance.tertiaryColor,fontFamily: "Roboto",fontWeight: FontWeight.w600),);
}
