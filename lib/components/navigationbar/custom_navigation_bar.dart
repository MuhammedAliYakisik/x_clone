import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:x_clone/core/constants/color_constant.dart';
import 'package:x_clone/view/home/home_view.dart';

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
      Text("data"),
      navBarPage(Icons.notifications),
      navBarPage(Icons.grid_view),
      navBarPage(Icons.mail),
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
              "assets/icons/twitter-home.svg",
              height: 25,
              width: 25,
              color: Colors.black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/twitter-search.svg",
              height: 25,
              width: 25,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/twitter-alert-6.svg",
              height: 25,
              width: 25,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/twitter-news.svg",
              height: 25,
              width: 25,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/twitter-message.svg",
              height: 25,
              width: 25,
            ),
            label: "",
          ),
        ],
      ),
      body: page[selectedIndex],
    );
  }
}
navBarPage(iconName) {
  return Center(
    child: Icon(
      iconName,
      size: 150,
      color: Colors.white,
    ),
  );
}
