import 'dart:ui';
import 'package:flutter/material.dart';

class UIData {
  //routes
  static const String homeRoute = "/home";
  static const String profileOneRoute = "/View Profile";
  static const String profileTwoRoute = "/Profile 2";
  static const String notFoundRoute = "/No Search Result";
  static const String timelineOneRoute = "/Feed";
  static const String timelineTwoRoute = "/Tweets";
  static const String settingsOneRoute = "/Device Settings";
  static const String shoppingOneRoute = "/Shopping List";
  static const String shoppingTwoRoute = "/Shopping Details";
  static const String shoppingThreeRoute = "/Product Details";
  static const String paymentOneRoute = "/Credit Card";
  static const String paymentTwoRoute = "/Payment Success";
  static const String loginOneRoute = "/Login With OTP";
  static const String loginTwoRoute = "/Login 2";
  static const String dashboardOneRoute = "/Dashboard 1";
  static const String dashboardTwoRoute = "/Dashboard 2";

  //strings
  static const String appName = "Whg's UIKit";

  //fonts
  static const String quickFont = "Quicksand";
  static const String ralewayFont = "Raleway";

  //colors
  static List<Color> kitGradients = [
    Colors.blueGrey.shade800,
    Colors.brown.shade100,
  ];
  static List<Color> kitGradients2 = [
    Color(0xffb7ac50),
    Colors.orange.shade900
  ];


  static List<String> images = [
    pkImage,
    profileImage,
    loginImage,
    paymentImage,
    timelineImage,
  ];

  //images
  static const String imageDir = "assets/images";
  static const String pkImage = "$imageDir/pk.jpg";
  static const String profileImage = "$imageDir/profile.jpg";
  static const String blankImage = "$imageDir/blank.jpg";
  static const String dashboardImage = "$imageDir/dashboard.jpg";
  static const String loginImage = "$imageDir/login.jpg";
  static const String paymentImage = "$imageDir/payment.jpg";
  static const String settingsImage = "$imageDir/setting.jpeg";
  static const String shoppingImage = "$imageDir/shopping.jpeg";
  static const String timelineImage = "$imageDir/timeline.jpeg";
  static const String verifyImage = "$imageDir/verification.jpg";
  static const String homeToolBarBgImage =
      "https://mmbiz.qpic.cn/mmbiz_jpg/cprpPre9lU2FFLzvPpWZHOp0iaIymJGq3qy89LcE8d1LficKicqsaibqEjD9HJIjUwA7fh13bHUoVJOO9pkoFQqmzw/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1";

  //gneric
  static const String coming_soon = "敬请等待";
  static const String unknow = "未知页面";

}
