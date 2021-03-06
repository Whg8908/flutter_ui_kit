import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_kit/ui/notfound/notfound_page.dart';
import 'package:ui_kit/ui/pages/home_page.dart';
import 'package:ui_kit/ui/profile/profile_one_page.dart';
import 'package:ui_kit/ui/profile/profile_two_page.dart';
import 'package:ui_kit/ui/settings/settings_one_page.dart';
import 'package:ui_kit/ui/timeline/timeline_one_page.dart';
import 'package:ui_kit/ui/timeline/timeline_two_page.dart';
import 'package:ui_kit/utils/uidata.dart';

class MyApp extends StatelessWidget {
  //MaterialApp
  final materialApp = new MaterialApp(
    title: UIData.appName,
    theme: new ThemeData(
      primaryColor: Colors.black,
      primarySwatch: Colors.amber,
      fontFamily: UIData.quickFont,
    ),
    debugShowCheckedModeBanner: false,
    //不显示debugmode标签
    showPerformanceOverlay: false,
    //是否显示调试工具
    home: new HomePage(),
    //主页面

    //routes
    routes: <String, WidgetBuilder>{
      UIData.homeRoute: (BuildContext context) => HomePage(),
      UIData.profileOneRoute: (BuildContext context) => ProfileOnePage(),
      UIData.profileTwoRoute: (BuildContext context) => ProfileTwoPage(),
      UIData.timelineOneRoute: (BuildContext context) => TimelineOnePage(),
      UIData.timelineTwoRoute: (BuildContext context) => TimelineTwoPage(),
      UIData.notFoundRoute: (BuildContext context) => NotFoundPage(),
      UIData.settingsOneRoute: (BuildContext context) => SettingsOnePage(),

    },

    //如果没有相关的路由配置页面,则跳转到通用页面
    onUnknownRoute: (RouteSettings rs) => new MaterialPageRoute(
          builder: (context) => new NotFoundPage(
                appTitle: UIData.unknow,
                icon: FontAwesomeIcons.solidSmile,
                title: UIData.coming_soon,
                message: "未开发",
                iconColor: Colors.green,
              ),
        ),
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
