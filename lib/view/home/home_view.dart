import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:x_clone/components/drawer/custom_drawer.dart';
import 'package:x_clone/components/navigationbar/custom_navigation_bar.dart';
import 'package:x_clone/components/tabBar/custom_tabbar.dart';
import 'package:x_clone/core/constants/asset_constant.dart';
import 'package:x_clone/core/constants/color_constant.dart';
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
        floatingActionButton: _floatActionButton(),
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

  FloatingActionButton _floatActionButton() {
    return FloatingActionButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),onPressed: (){},
      child: SvgPicture.asset("assets/icons/twitter-newtweet.svg", color: ColorConstant.instance.primaryColor, width: 10, height: 25,),
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
      bottom: CustomTabbar(),
    );
  }
}