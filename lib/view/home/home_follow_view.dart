import 'package:flutter/material.dart';

import '../../core/constants/color_constant.dart';

class HomeFollowView extends StatefulWidget {
  const HomeFollowView({super.key});

  @override
  State<HomeFollowView> createState() => _HomeFollowViewState();
}

class _HomeFollowViewState extends State<HomeFollowView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.instance.primaryColor,
      body: Center(
        child: Column(
          children: [
            Text("takip")
          ],
        ),
      ),
    );
  }
}
