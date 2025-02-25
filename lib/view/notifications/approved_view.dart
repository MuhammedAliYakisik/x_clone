import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:x_clone/core/constants/color_constant.dart';
import 'package:x_clone/core/extension/context_extension.dart';
import 'package:x_clone/core/extension/size_extension.dart';

import '../../core/constants/string_constant.dart';

class ApprovedView extends StatelessWidget {
  const ApprovedView({super.key});

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
              _infoRichText(context),

            ],
          ),
        ),
      ),
    );
  }

  GestureDetector _infoRichText(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: StringConstant.instance.infoApprovedText,
                  style: context.textTheme.titleMedium?.copyWith(
                      color: ColorConstant.instance.secondaryColor,fontFamily: "Roboto",fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),),
    );
  }
}
Text _contentText(BuildContext context) {
  return Text(StringConstant.instance.approvedContentText,
    style: context.textTheme.titleMedium?.copyWith(
        color: ColorConstant.instance.iconColor,fontFamily: "Roboto",fontWeight: FontWeight.w400
    ),);
}

Text _headerText(BuildContext context) {
  return Text(StringConstant.instance.approvedHeaderText,style: context.textTheme.headlineLarge?.copyWith(
      color: ColorConstant.instance.tertiaryColor,fontFamily: "Roboto",fontWeight: FontWeight.w600),);
}

