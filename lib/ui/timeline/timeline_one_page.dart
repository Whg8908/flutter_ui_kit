import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_kit/logic/bloc/post_bloc.dart';
import 'package:ui_kit/module/post.dart';
import 'package:ui_kit/ui/widgets/common_diveder.dart';
import 'package:ui_kit/ui/widgets/common_drawer.dart';
import 'package:ui_kit/ui/widgets/label_icon.dart';
import 'package:ui_kit/utils/uidata.dart';

class TimelineOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CommonDrawer(),
      body: bodySliverList(),
    );
  }

  Widget bodySliverList() {
    PostBloc postBloc = PostBloc();
    return StreamBuilder<List<Post>>(
      stream: postBloc.postItems,
      builder: (context, snapshot) {
        return snapshot.hasData
            ? CustomScrollView(
                slivers: <Widget>[
                  appBar(),
                  bodyList(snapshot.data),
                ],
              )
            : Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }

  Widget appBar() => SliverAppBar(
        backgroundColor: Colors.black54,
        elevation: 2.0,
        title: Text("朋友圈"),
        forceElevated: true,
        pinned: true,
        floating: true,
        bottom: bottomBar(),
      );

  Widget bottomBar() => PreferredSize(
        preferredSize: Size(double.infinity, 50.0),
        child: Container(
          color: Colors.black54,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50.0,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "所有动态",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          ),
        ),
      );

  //bodyList
  Widget bodyList(List<Post> data) => SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: postCard(context, data[index]),
          );
        }, childCount: data.length),
      );

  Widget postCard(BuildContext context, Post data) => Card(
        elevation: 2.0,
        child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: profileColumn(context, data)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                data.message,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: UIData.ralewayFont),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            data.messageImage != null
                ? Image.network(
                    data.messageImage,
                    fit: BoxFit.cover,
                  )
                : Container(),
            data.messageImage != null ? Container() : CommonDivider(),
            actionColumn(context, data),
          ],
        ),
      );

  Widget profileColumn(BuildContext context, Post data) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(data.personImage),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  data.personName,
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .apply(fontWeightDelta: 700),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  data.address,
                  style: Theme.of(context).textTheme.caption.apply(
                      fontFamily: UIData.ralewayFont, color: Colors.pink),
                )
              ],
            ),
          ))
        ],
      );

  Widget actionColumn(BuildContext context, Post data) => ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          LabelIcon(
            label: "${data.likesCount} 点赞",
            icon: FontAwesomeIcons.solidThumbsUp,
            iconColor: Colors.green,
            onPressed: (){
              //TODO完善点击事件
              print("点击了点赞");
              Navigator.pop(context);
            },
          ),
          LabelIcon(
            label: "${data.commentsCount} 评论",
            icon: FontAwesomeIcons.comment,
            iconColor: Colors.blue,
          ),
          Text(
            data.postTime,
            style: TextStyle(fontFamily: UIData.ralewayFont),
          )
        ],
      );
}
