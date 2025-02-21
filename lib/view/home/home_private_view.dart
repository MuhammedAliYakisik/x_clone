import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constant.dart';
import '../widgets/tweet_card.dart';
import 'Tweet/tweet_items.dart';

class HomePrivateView extends StatefulWidget {
  const HomePrivateView({super.key});

  @override
  State<HomePrivateView> createState() => _HomePrivateViewState();
}

class _HomePrivateViewState extends State<HomePrivateView> {
  final tweetList = TweetItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.instance.primaryColor,
      body: ListView.separated(
        itemCount: tweetList.tweets.length,
        itemBuilder: (context, indeks) {
          var tweet = tweetList.tweets[indeks];
          return TweetCard(tweet: tweet);
        },
        separatorBuilder: (context, indeks) {
          return Container();
        },
      ),
    );
  }
}
