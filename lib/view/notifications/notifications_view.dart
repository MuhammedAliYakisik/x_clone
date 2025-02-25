import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:x_clone/components/drawer/custom_drawer.dart';
import 'package:x_clone/components/floatingactionbutton/custom_floating_action_button.dart';
import 'package:x_clone/components/tabBar/custom_tabbar.dart';
import 'package:x_clone/core/extension/context_extension.dart';
import 'package:x_clone/view/notifications/all_notifications_view.dart';
import 'package:x_clone/view/notifications/approved_view.dart';
import 'package:x_clone/view/notifications/mentioners_view.dart';

import '../../core/constants/asset_constant.dart';
import '../../core/constants/color_constant.dart';
import '../../core/constants/string_constant.dart';
import '../home/home_private_view.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: CustomDrawer(),
        floatingActionButton: CustomFloatingActionButton(icon: Icons.add),
        appBar: _appBar(context),
        body: SafeArea(
          child: TabBarView(children: [
            AllNotificationsView(),
            ApprovedView(),
            MentionersView()


          ]),
        ),
      ),
    );
  }



}

AppBar _appBar(BuildContext context) {
  return AppBar(
    bottom: CustomTabbar(tabs: [
      Tab(text: "Tümü",),
      Tab(text: "Onaylanmış",),
      Tab(text: "Bahsedenler",),
    ]),
    backgroundColor: ColorConstant.instance.primaryColor,
    title:  _appBarText(context),
    leading: Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(AssetConstant.instance.profilePicture),
            ),
          );
        },
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
  return Text(StringConstant.instance.notificationAppBarText,
    style: context.textTheme.titleLarge?.copyWith(color: ColorConstant.instance.tertiaryColor
        ,fontWeight: FontWeight.w600
        ,fontFamily: "Roboto"),);
}
