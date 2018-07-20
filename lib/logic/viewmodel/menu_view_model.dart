

import 'package:flutter/material.dart';
import 'package:ui_kit/module/menu.dart';
import 'package:ui_kit/utils/uidata.dart';

class MenuViewModel{
  List<Menu> menuItems;

  MenuViewModel({this.menuItems});

  getMenuItems() {
    return menuItems = <Menu>[
      Menu(
          title: "简介",
          icon: Icons.person,
          image: UIData.profileImage,
          items: ["简介UI", "简介2", "简介3", "简介4"]),
      Menu(
          title: "购物",
          icon: Icons.shopping_cart,
          image: UIData.shoppingImage,
          items: [
            "购物清单",
            "购物详情",
            "商品详情",
            "购物"
          ]),
      Menu(
          title: "登录",
          icon: Icons.send,
          image: UIData.loginImage,
          items: ["登录通过OTP", "登录2", "注册", "登录4"]),
      Menu(
          title: "时间轴",
          icon: Icons.timeline,
          image: UIData.timelineImage,
          items: ["Feed", "Tweets", "时间轴 3", "时间轴 4"]),
      Menu(
          title: "表盘",
          icon: Icons.dashboard,
          image: UIData.dashboardImage,
          items: ["表盘 1", "表盘 2", "表盘 3", "表盘 4"]),
      Menu(
          title: "设置",
          icon: Icons.settings,
          image: UIData.settingsImage,
          items: ["系统设置", "设置2", "设置3", "设置4"]),
      Menu(
          title: "未知",
          icon: Icons.not_interested,
          image: UIData.blankImage,
          items: ["无搜索结果", "无网络", "未知 3", "未知 4"]),
      Menu(
          title: "付款",
          icon: Icons.payment,
          image: UIData.paymentImage,
          items: ["信用卡", "支付成功", "付款 3", "付款 4"]),
    ];
  }

}