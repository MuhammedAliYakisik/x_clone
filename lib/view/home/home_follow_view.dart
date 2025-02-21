import 'package:flutter/material.dart';
import 'package:x_clone/view/home/Tweet/tweet_model.dart';
import 'package:x_clone/view/widgets/tweet_card.dart';

import '../../core/constants/color_constant.dart';

class HomeFollowView extends StatefulWidget {
  final Tweet tweet;
  const HomeFollowView({super.key,required this.tweet});

  @override
  State<HomeFollowView> createState() => _HomeFollowViewState();
}

class _HomeFollowViewState extends State<HomeFollowView> {
  @override
  Widget build(BuildContext context) {
    return TweetCard(tweet: widget.tweet);
  }
}
