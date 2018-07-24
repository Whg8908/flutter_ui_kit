import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_kit/logic/bloc/post_bloc.dart';
import 'package:ui_kit/module/post.dart';
import 'package:ui_kit/ui/widgets/common_drawer.dart';
import 'package:ui_kit/utils/uidata.dart';

class TimelineTwoPage extends StatefulWidget {
  @override
  TimeLineTwoPageState createState() => new TimeLineTwoPageState();
}

class TimeLineTwoPageState extends State<TimelineTwoPage> {
  ScrollController scrollController;

  PostBloc postBloc;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    postBloc = PostBloc();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) postBloc.fabSink.add(false);
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) postBloc.fabSink.add(true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: appBar(),
      body: bodyData(),
      drawer: CommonDrawer(),
      floatingActionButton: StreamBuilder<bool>(
        stream: postBloc.fabVisible,
        initialData: true,
        builder: (context, snapshot) => Opacity(
              opacity: snapshot.hasData ? 1.0 : 0.0,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                backgroundColor: Colors.white,
                child: Icon(Icons.add),
              ),
            ),
      ),
    );
  }

  Widget appBar() => AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: false,
        title: Text("推特"),
      );

  Widget bodyData() => StreamBuilder<List<Post>>(
        stream: postBloc.postItems,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? bodyList(snapshot.data)
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      );

  Widget bodyList(List<Post> datas) => ListView.builder(
      controller: scrollController,
      itemCount: datas.length,
      itemBuilder: (context, index) {
        Post post = datas[index];
        return Card(
          color: Colors.grey.shade900,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage(
                      post.personImage,
                    )),
                rightColumn(post),
              ],
            ),
          ),
        );
      });

  Widget rightColumn(Post post) => Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                    maxLines: 1,
                    text: TextSpan(
                      children: [
                        TextSpan(text: "${post.personName}"),
                        TextSpan(
                            text: "@${post.address} · ",
                            style: TextStyle(color: Colors.grey)),
                        TextSpan(
                            text: "${post.postTime}",
                            style: TextStyle(color: Colors.grey)),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  post.message,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontFamily: UIData.quickFont,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              post.messageImage != null
                  ? Material(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        post.messageImage,
                        gaplessPlayback: true,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Container(),
              SizedBox(
                height: 20.0,
              ),
              actionRow(post),
            ],
          ),
        ),
      );

  Widget actionRow(Post post) => Padding(
        padding: const EdgeInsets.only(right: 50.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.comment,
              size: 15.0,
              color: Colors.grey,
            ),
            Icon(
              FontAwesomeIcons.retweet,
              size: 15.0,
              color: Colors.grey,
            ),
            Icon(
              FontAwesomeIcons.heart,
              size: 15.0,
              color: Colors.grey,
            ),
            Icon(
              FontAwesomeIcons.share,
              size: 15.0,
              color: Colors.grey,
            )
          ],
        ),
      );

  @override
  void dispose() {
    postBloc?.dispose();
    super.dispose();
  }
}
