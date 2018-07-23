import 'package:flutter/material.dart';
import 'package:ui_kit/ui/profile/profile_one_page.dart';
import 'package:ui_kit/ui/widgets/commons_scafflod.dart';
import 'package:ui_kit/utils/uidata.dart';

class ProfileTwoPage extends StatelessWidget {
  Size deviceSize;

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return CommonScaffold(
      appbarBackgroundColor: Colors.black54,
      appTitle: "简介",
      bodyData: bodyData(),
      elevation: 0.0,
    );
  }

  //body
  Widget bodyData() => SingleChildScrollView(
        child: Column(
          children: <Widget>[
            profileHeader(),
            followColumn(deviceSize),
            imageCard(),
            postCard(),
          ],
        ),
      );

  Widget profileHeader() => Container(
        height: deviceSize.height / 4,
        width: double.infinity,
        color: Colors.black54,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            color: Colors.black54,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(UIData.pkImage),
                  ),
                ),
                Text(
                  "Whg",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  "Flutter Study",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      );

  Widget imageCard() => Container(
        height: deviceSize.height / 6,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "照片墙",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
                ),
              ),
              Expanded(
                child: Card(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: UIData.images.length,
                    itemBuilder: (context, index) => Padding(
                          padding: index != UIData.images.length - 1
                              ? const EdgeInsets.only(
                                  left: 8.0, top: 8.0, bottom: 8.0)
                              : const EdgeInsets.all(8.0),
                          child: Image.asset(UIData.images[index]),
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget postCard() => Container(
        width: double.infinity,
        height: deviceSize.height / 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("文章",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0)),
              ),
              profileColumn(),
              Expanded(
                child: Card(
                  color: Colors.white,
                  elevation: 2.0,
                  child: Image.network(UIData.homeToolBarBgImage,fit: BoxFit.cover,),
                ),
              ),
            ],
          ),
        ),
      );

  Widget profileColumn() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(UIData.pkImage),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Whg上传了一张图片"),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text("25分钟以前")
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
