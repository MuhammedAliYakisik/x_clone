import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:x_clone/core/constants/asset_constant.dart';
import 'package:x_clone/core/constants/color_constant.dart';
import 'package:x_clone/view/home/home_view.dart';
import 'package:x_clone/view/message/message_view.dart';
import 'package:x_clone/view/notifications/notifications_view.dart';
import 'package:x_clone/view/search/search_view.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedIndex = 0;
  late final List<Widget> page;

  @override
  void initState() {
    page = [
      const HomeView(),
      const SearchView(),
      const NotificationsView(),
      const MessageView()
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstant.instance.primaryColor,
        showSelectedLabels: false,
        currentIndex: selectedIndex,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetConstant.instance.twitterHome,
              height: 25,
              width: 25,
              color: selectedIndex == 0
                  ? Colors.black
                  : ColorConstant.instance.tertiaryColor,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetConstant.instance.twitterSearch,
              height: 25,
              width: 25,
              color: selectedIndex == 1
                  ? Colors.black
                  : ColorConstant.instance.tertiaryColor,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetConstant.instance.twitterAlert,
              height: 25,
              width: 25,
              color: selectedIndex == 2
                  ? Colors.black
                  : ColorConstant.instance.tertiaryColor,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetConstant.instance.twitterMessage,
              height: 25,
              width: 25,
              color: selectedIndex == 3
                  ? Colors.black
                  : ColorConstant.instance.tertiaryColor,
            ),
            label: "",
          ),
        ],
      ),
      body: page[selectedIndex],
    );
  }
}
