import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:x_clone/components/drawer/custom_drawer.dart';
import 'package:x_clone/components/floatingactionbutton/custom_floating_action_button.dart';
import 'package:x_clone/components/tabBar/custom_tabbar.dart';
import 'package:x_clone/core/constants/asset_constant.dart';
import 'package:x_clone/core/constants/color_constant.dart';
import 'package:x_clone/core/constants/string_constant.dart';
import 'package:x_clone/view/home/Tweet/tweet_items.dart';
import 'package:x_clone/view/home/home_follow_view.dart';
import 'package:x_clone/view/home/home_private_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _isAppBarVisible = false;
  double _lastOffset = 0;
  late ScrollController scrollController;
  final tweetList = TweetItems();

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();

    scrollController.addListener(() {
      if (scrollController.offset <= 0) {
        _isAppBarVisible = false;
      } else {
        _isAppBarVisible = scrollController.offset > _lastOffset ? true : false;
      }

      setState(() {
        _lastOffset = scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: CustomDrawer(),
        floatingActionButton: CustomFloatingActionButton(icon: Icons.add),
        backgroundColor: ColorConstant.instance.primaryColor,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            _appBar()
          ],
          body: SafeArea(
            child: TabBarView(
              children: [
                HomePrivateView(),
                HomeFollowView(tweet: tweetList.tweetsForFollow[1]),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _appBar() {
    return SliverAppBar(
      title: const FaIcon(
        FontAwesomeIcons.xTwitter,
        size: 40,
      ),
      centerTitle: true,
      pinned: true,
      floating: true,
      snap: true,
      backgroundColor: ColorConstant.instance.primaryColor,
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
      bottom: CustomTabbar(tabs: [
        Tab(text: StringConstant.instance.tabBarFirstText,),
        Tab(text: StringConstant.instance.tabBarSecondText,),
      ])
    );
  }
}