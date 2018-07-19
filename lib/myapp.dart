import 'package:flutter/material.dart';
import 'package:ui_kit/ui/pages/home_page.dart';
import 'package:ui_kit/utils/uidata.dart';

class MyApp extends StatelessWidget {
  final materialApp = new MaterialApp(
    title: UIData.appName,
    theme: new ThemeData(
      primaryColor: Colors.black,
      primarySwatch: Colors.amber,
      fontFamily: UIData.quickFont,
    ),
    debugShowCheckedModeBanner: false, //不显示degbumode标签
    showPerformanceOverlay: false, //是否显示调试工具
    home: new HomePage(),
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}