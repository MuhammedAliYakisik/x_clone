import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:numeral/numeral.dart';
import 'package:x_clone/core/extension/context_extension.dart';

import '../../core/constants/asset_constant.dart';
import '../../core/constants/color_constant.dart';
import '../home/Tweet/tweet_model.dart';

class TweetCard extends StatefulWidget {
  final Tweet tweet;
  const TweetCard({super.key,required this.tweet});

  @override
  State<TweetCard> createState() => _TweetCardState();
}

class _TweetCardState extends State<TweetCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.paddingLowVertical.vertical, horizontal: context.paddingLowHorizontal.horizontal),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _circleAvatar(widget.tweet),
          const Gap(5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _nameText(widget.tweet, context),
                    const Gap(5),
                    _verifiedIcon(),
                    const Gap(5),
                    _userNameText(widget.tweet, context),
                    Gap(5),
                    Icon(Icons.more_horiz,color: ColorConstant.instance.unSelectedColor,)
                  ],
                ),
                _tweetContent(widget.tweet, context),
                Gap(5),
                widget.tweet.tweetImage != ""
                    ? Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        widget.tweet.tweetImage,
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
                        Text("${widget.tweet.comments.numeral()}",style: context.textTheme.titleMedium?.copyWith(
                          color: ColorConstant.instance.tertiaryColor,fontFamily: "Roboto",fontWeight: FontWeight.w400
                        ),),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(AssetConstant.instance.twitterRetweet),
                        Gap(5),
                        Text("${widget.tweet.shares.numeral()}"),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(AssetConstant.instance.twitterLikeOutline),
                        Gap(5),
                        Text("${widget.tweet.likes.numeral()}"),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(AssetConstant.instance.twitterAnalytics),
                        Gap(5),
                        Text("${widget.tweet.views.numeral()}"),
                        Gap(5),
                        Icon(Icons.file_upload_outlined,color: ColorConstant.instance.unSelectedColor),
                        Gap(5),
                        Icon(Icons.save,color: ColorConstant.instance.unSelectedColor)
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
  }
}
Text _tweetContent(Tweet tweet, BuildContext context) {
  return Text(
    tweet.tweet,
      style: context.textTheme.titleMedium?.copyWith(
          color: ColorConstant.instance.tertiaryColor,fontFamily: "Roboto",fontWeight: FontWeight.w400
      )
  );
}

Text _userNameText(Tweet tweet, BuildContext context) {
  return Text(
      "@${tweet.userName} - ${tweet.time}",
      style: context.textTheme.titleMedium?.copyWith(
          color: ColorConstant.instance.iconColor,
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
          color: ColorConstant.instance.tertiaryColor,fontFamily: "Roboto",fontWeight: FontWeight.w500
      )
  );
}

CircleAvatar _circleAvatar(Tweet tweet) {
  return CircleAvatar(
    radius: 30,
    backgroundImage: NetworkImage("${tweet.image}"),
  );
}


