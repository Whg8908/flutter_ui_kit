import 'package:flutter/material.dart';
import 'package:ui_kit/ui/widgets/common_center.dart';
import 'package:ui_kit/ui/widgets/common_diveder.dart';
import 'package:ui_kit/ui/widgets/commons_scafflod.dart';
import 'package:ui_kit/ui/widgets/profile_tile.dart';
import 'package:ui_kit/utils/uidata.dart';

//个人简介页面
class ProfileOnePage extends StatelessWidget {
  Size deviceSize;

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return _scaffold();
  }

  //返回通用脚手架
  Widget _scaffold() => CommonScaffold(
        appTitle: "个人简介",
        bodyData: bodyData(),
        showFAB: true,
        showDrawer: true,
        floatingIcon: Icons.person_add,
      );

  //body
  Widget bodyData() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          profileColumn(),
          CommonDivider(),
          followColumn(deviceSize),
          CommonDivider(),
          descColumn(),
          CommonDivider(),
          accountColumn()
        ],
      ),
    );
  }

  //第一行
  Widget profileColumn() => Container(
        height: deviceSize.height * 0.24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ProfileTile(
              title: "Whg",
              subtitle: "Developer",
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.chat),
                  color: Colors.black,
                  onPressed: () {},
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(50.0)),
                    border: new Border.all(
                      color: Colors.black,
                      width: 4.0,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(UIData.pkImage),
                    foregroundColor: Colors.black,
                    radius: 40.0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.call),
                  color: Colors.black,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      );


  //第三行
  Widget descColumn() => Container(
        height: deviceSize.height * 0.13,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              "Stay hundry,Stay foolish.",
              style: TextStyle(fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
              maxLines: 3,
              softWrap: true,
            ),
          ),
        ),
      );

  //第四行
  Widget accountColumn() => Container(
//        height: deviceSize.height * 0.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CommonCenter(
                  title: "GitHub",
                  subtitle: "https://github.com/Whg8908",
                ),
                CommonCenter(
                  title: "手机",
                  subtitle: "+18200000000",
                ),
                CommonCenter(
                  title: "网站",
                  subtitle: "www.whg.com",
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CommonCenter(
                  title: "地址",
                  subtitle: "Beijing.China",
                ),
                CommonCenter(
                  title: "邮件",
                  subtitle: "whg8908@gmail.com",
                ),
                CommonCenter(
                  title: "网站",
                  subtitle: "www.whg.com",
                ),
              ],
            ),
          ],
        ),
      );
}


//第二行
Widget followColumn(Size deviceSize) => Container(
  height: deviceSize.height * 0.13,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      ProfileTile(
        title: "1.5k",
        subtitle: "文章",
      ),
      ProfileTile(
        title: "2.5k",
        subtitle: "粉丝",
      ),
      ProfileTile(
        title: "10k",
        subtitle: "评论",
      ),
      ProfileTile(
        title: "1.2k",
        subtitle: "关注",
      ),
    ],
  ),
);
