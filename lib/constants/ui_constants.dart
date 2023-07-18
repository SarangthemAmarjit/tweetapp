// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweetapp/constants/assets_constants.dart';
import 'package:tweetapp/pages/notificationpage.dart';
import 'package:tweetapp/pages/tweetlist.dart';

import '../pages/explore_view.dart';
import '../theme/pallete.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
        color: Pallete.blueColor,
        height: 65,
      ),
      centerTitle: true,
    );
  }

  static const List<Widget> bottomTabBarPages = [
    TweetListPage(),
    ExploreView(),
    NotificationPage(),
  ];
}
