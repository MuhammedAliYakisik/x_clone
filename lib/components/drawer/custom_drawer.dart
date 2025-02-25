import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:x_clone/core/constants/asset_constant.dart';
import 'package:x_clone/core/extension/context_extension.dart';

import '../../core/constants/color_constant.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  var nameText = "Muhammed Ali";
  var userNameText = "@muhammed_ali";
  var followText = "Takip Edilen";
  var followerText = "Takipçi";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
         SizedBox(
           height: 180,
           child: DrawerHeader(child: _drawerHeader(context)
           ),
         ),
          _menuItems(context, "Profil", _iconSvg(AssetConstant.instance.twitterProfile)),
          _menuItems(context, "Premium",  Icon(FontAwesomeIcons.circleCheck,color: ColorConstant.instance.tertiaryColor,)),
          _menuItems(context, "Yer İşaretleri",  Icon(FontAwesomeIcons.bookmark,color: ColorConstant.instance.tertiaryColor,)),
          _menuItems(context, "İş İlanları", Icon(Icons.work_history_outlined,color: ColorConstant.instance.tertiaryColor,weight: 20,)),
          _menuItems(context, "Listeler",  _iconSvg(AssetConstant.instance.twitterLists)),
          _menuItems(context, "Sohbet Odaları", Icon(Icons.mic_none_rounded,color: ColorConstant.instance.tertiaryColor,weight: 20,)),
          _menuItems(context, "Gelire Dönüştürme", Icon(FontAwesomeIcons.moneyBill1,color: ColorConstant.instance.tertiaryColor,)),
          _menuItems(context, "Ayarlar ve Gizlilik",  _iconSvg(AssetConstant.instance.twitterSettings)),
          _menuItems(context, "Çıkış Yap", Icon(FontAwesomeIcons.arrowRightFromBracket,color: ColorConstant.instance.tertiaryColor,)),
        ],
      ),

    );
  }

  SvgPicture _iconSvg(String svg) => SvgPicture.asset(svg,color: ColorConstant.instance.tertiaryColor,height: 23,width: 20,);

  Column _drawerHeader(BuildContext context) {
    return Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               CircleAvatar(
                 radius: 25,
                 backgroundImage: AssetImage(AssetConstant.instance.profilePicture),
               ),
               Icon(Icons.add),

             ],
           ),
           Gap(context.lowHeightValue),
           _text(context, nameText, ColorConstant.instance.tertiaryColor, context.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500)),
           _text(context, userNameText, ColorConstant.instance.userNameColor, context.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400)),
           Gap(5),
           Row(
             spacing: 3,
             children: [
               _text(context, "1", ColorConstant.instance.tertiaryColor, context.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500)),
               _text(context, followText, ColorConstant.instance.userNameColor, context.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400)),
               Gap(context.lowWidthValue),
               _text(context, "0", ColorConstant.instance.tertiaryColor, context.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500)),
               _text(context, followerText, ColorConstant.instance.userNameColor, context.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400)),

             ],
           )

         ],
       );
  }

  Text _text(BuildContext context,String text, Color color,TextStyle textTheme) {
    return Text(text,style: textTheme,);
  }
}
ListTile _menuItems(BuildContext context,String text,Widget icon) {
  return ListTile(
    leading: icon,
    title: Text(
      text,
      style: context
          .textTheme
          .titleLarge
          ?.copyWith(
        color: ColorConstant.instance.tertiaryColor,
        fontWeight: FontWeight.w500,
      ),
    ),
    onTap: (){

    },
  );
}
