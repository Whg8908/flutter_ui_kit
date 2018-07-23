import 'package:flutter/material.dart';
import 'package:ui_kit/module/menu.dart';
import 'package:ui_kit/utils/uidata.dart';

class MenuViewModel {
  List<Menu> menuItems;

  MenuViewModel({this.menuItems});

  getMenuItems() {
    return menuItems = <Menu>[
      Menu(
          title: "简介",
          icon: Icons.person,
          image: UIData.profileImage,
          pages: [UIData.profileOneRoute, UIData.profileTwoRoute, "简介3", "简介4"],
          items: ["简介UI", "简介2", "简介3", "简介4"]),
      Menu(
          title: "购物",
          icon: Icons.shopping_cart,
          image: UIData.shoppingImage,
          pages: [
            UIData.shoppingOneRoute,
            UIData.shoppingTwoRoute,
            UIData.shoppingThreeRoute,
            "购物"
          ],
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
          pages: [UIData.loginOneRoute, UIData.loginTwoRoute, "注册", "登录4"],
          items: ["登录通过OTP", "登录2", "注册", "登录4"]),
      Menu(
          title: "时间轴",
          icon: Icons.timeline,
          image: UIData.timelineImage,
          pages: [
            UIData.timelineOneRoute,
            UIData.timelineTwoRoute,
            "时间轴 3",
            "时间轴 4"
          ],
          items: [
            "朋友圈",
            "Tweets",
            "时间轴 3",
            "时间轴 4"
          ]),
      Menu(
          title: "表盘",
          icon: Icons.dashboard,
          image: UIData.dashboardImage,
          pages: [
            UIData.dashboardOneRoute,
            UIData.dashboardTwoRoute,
            "表盘 3",
            "表盘 4"
          ],
          items: [
            "表盘 1",
            "表盘 2",
            "表盘 3",
            "表盘 4"
          ]),
      Menu(
          title: "设置",
          icon: Icons.settings,
          image: UIData.settingsImage,
          pages: [UIData.settingsOneRoute, "设置2", "设置3", "设置4"],
          items: ["系统设置", "设置2", "设置3", "设置4"]),
      Menu(
          title: "未知",
          icon: Icons.not_interested,
          image: UIData.blankImage,
          pages: [UIData.notFoundRoute, "无网络", "未知 3", "未知 4"],
          items: ["无搜索结果", "无网络", "未知 3", "未知 4"]),
      Menu(
          title: "付款",
          icon: Icons.payment,
          image: UIData.paymentImage,
          pages: [
            UIData.paymentOneRoute,
            UIData.paymentTwoRoute,
            "付款 3",
            "付款 4"
          ],
          items: [
            "信用卡",
            "支付成功",
            "付款 3",
            "付款 4"
          ]),
    ];
  }
}
