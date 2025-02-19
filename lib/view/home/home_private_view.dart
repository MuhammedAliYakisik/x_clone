import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:numeral/numeral.dart';
import 'package:x_clone/core/constants/asset_constant.dart';
import 'package:x_clone/core/extension/context_extension.dart';
import 'package:x_clone/view/home/Tweet/tweet_items.dart';

import '../../core/constants/color_constant.dart';
import 'package:x_clone/view/home/Tweet/tweet_model.dart';

class HomePrivateView extends StatefulWidget {
  const HomePrivateView({super.key});

  @override
  State<HomePrivateView> createState() => _HomePrivateViewState();
}

class _HomePrivateViewState extends State<HomePrivateView> {
  late ScrollController scrollController;
  final tweetList = TweetItems();

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.instance.primaryColor,
      body: ListView.separated(
        controller: scrollController,
        itemCount: tweetList.tweets.length,
        itemBuilder: (context, indeks) {
          var tweet = tweetList.tweets[indeks];
          return Padding(
            padding: EdgeInsets.symmetric(vertical: context.paddingLowVertical.vertical, horizontal: context.paddingLowHorizontal.horizontal),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _circleAvatar(tweet),
                const Gap(5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          _nameText(tweet, context),
                          const Gap(5),
                          _verifiedIcon(),
                          const Gap(5),
                          _userNameText(tweet, context),
                          Gap(5),
                          Icon(Icons.more_horiz,color: ColorConstant.instance.unSelectedColor,)
                        ],
                      ),
                      _tweetContent(tweet, context),
                       Gap(5),
                      tweet.tweetImage != ""
                          ? Container(
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              tweet.tweetImage,
                            ),
                          ),
                        ),
                      )
                          : Container(),
                      SizedBox(height: 10),
                      Gap(5),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(AssetConstant.instance.twitterReplyOutline),
                              Gap(5),
                              Text("${tweet.comments.numeral()}"),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(AssetConstant.instance.twitterRetweet),
                              Gap(5),
                              Text("${tweet.shares.numeral()}"),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(AssetConstant.instance.twitterLikeOutline),
                              Gap(5),
                              Text("${tweet.likes.numeral()}"),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(AssetConstant.instance.twitterAnalytics),
                              Gap(5),
                              Text("${tweet.views.numeral()}"),
                              Gap(5),
                              Icon(Icons.file_upload_outlined),
                              Gap(5),
                              Icon(Icons.save)
                            ],
                          ),



                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, indeks) {
          return  Container();
        },
      ),
    );
  }

  Text _tweetContent(Tweet tweet, BuildContext context) {
    return Text(
                      tweet.tweet,
                      style: context.textTheme.titleMedium?.copyWith(
                        color: ColorConstant.instance.tertiaryColor,
                        fontWeight: FontWeight.w400
                      ),
                    );
  }

  Text _userNameText(Tweet tweet, BuildContext context) {
    return Text(
                          "@${tweet.userName} - ${tweet.time}",
                          style: context.textTheme.titleMedium?.copyWith(
                            color: ColorConstant.instance.userNameColor,
                            fontWeight: FontWeight.w500
                          )
                        );
  }

  SvgPicture _verifiedIcon() {
    return SvgPicture.asset(
                          AssetConstant.instance.twitterVerified,
                          color: ColorConstant.instance.verifiedColor,
                        );
  }

  Text _nameText(Tweet tweet, BuildContext context) {
    return Text(
                          tweet.name,
                          style: context.textTheme.titleMedium?.copyWith(
                            color: ColorConstant.instance.tertiaryColor,
                            fontWeight: FontWeight.w600
                          )
                        );
  }

  CircleAvatar _circleAvatar(Tweet tweet) {
    return CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("${tweet.image}"),
              );
  }
}
