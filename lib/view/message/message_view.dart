import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:x_clone/core/constants/color_constant.dart';
import 'package:x_clone/core/constants/string_constant.dart';
import 'package:x_clone/core/extension/context_extension.dart';

import '../../core/constants/asset_constant.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.instance.primaryColor,
      floatingActionButton: _floatActionButton(),
      appBar: _appBar(context),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: context.paddingNormalHorizontal.horizontal,vertical: context.paddingNormalVertical.vertical),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: context.lowHeightValue,
            children: [

              _headerWelcomeText(context),

              _contentText(context),

              _messageButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Text _contentText(BuildContext context) {
    return Text(StringConstant.instance.messageContentText,
            style: context.textTheme.titleMedium?.copyWith(
              color: ColorConstant.instance.iconColor,fontFamily: "Roboto",fontWeight: FontWeight.w400
            ),);
  }

  Text _headerWelcomeText(BuildContext context) {
    return Text(StringConstant.instance.welcomeText,style: context.textTheme.headlineLarge?.copyWith(
              color: ColorConstant.instance.tertiaryColor,fontFamily: "Roboto",fontWeight: FontWeight.w600
            ),);
  }

  ElevatedButton _messageButton(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child: Text(StringConstant.instance.messageButtonText,style: context.textTheme.titleMedium?.copyWith(
              color: ColorConstant.instance.primaryColor,fontWeight: FontWeight.w700,fontFamily: "Roboto"
            ),),style: ElevatedButton.styleFrom(
              backgroundColor: ColorConstant.instance.secondaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
            ),);
  }

  FloatingActionButton _floatActionButton() {
    return FloatingActionButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),onPressed: (){},
      child: Icon(FontAwesomeIcons.envelope,color: ColorConstant.instance.primaryColor,),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConstant.instance.primaryColor,
      title:  _appBarText(context),
      leading: Padding(
        padding:  EdgeInsets.only(left: 5),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(AssetConstant.instance.profilePicture),
        ),
      ),
      actions: [
        Padding(
          padding:  EdgeInsets.only(right: 5),
          child: SvgPicture.asset(AssetConstant.instance.twitterSettings,color: ColorConstant.instance.tertiaryColor,height: 25,),
        )
      ],
    );
  }

  Text _appBarText(BuildContext context) {
    return Text(StringConstant.instance.messageAppBarText,
      style: context.textTheme.titleLarge?.copyWith(color: ColorConstant.instance.tertiaryColor
          ,fontWeight: FontWeight.w600
          ,fontFamily: "Roboto"),);
  }
}
