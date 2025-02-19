import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:x_clone/components/tabBar/custom_tabbar.dart';
import 'package:x_clone/core/constants/asset_constant.dart';
import 'package:x_clone/core/constants/color_constant.dart';
import 'package:x_clone/core/constants/string_constant.dart';
import 'package:x_clone/view/home/home_follow_view.dart';
import 'package:x_clone/view/home/home_private_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorConstant.instance.primaryColor,
        appBar: _appBar(),
        body: SafeArea(
          child: const TabBarView(
            children: [
              HomePrivateView(),
              HomeFollowView()
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(AssetConstant.instance.profilePicture),
          ),
        ),
        title: const FaIcon(
          FontAwesomeIcons.xTwitter,
          size: 40,
        ),
        bottom: CustomTabbar(),
      );
  }
}
