import 'package:flutter/material.dart';
import 'package:ui_kit/ui/pages/home_page.dart';
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
    debugShowCheckedModeBanner: false, //不显示debugmode标签
    showPerformanceOverlay: false, //是否显示调试工具
    home: new HomePage(),  //主页面
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}