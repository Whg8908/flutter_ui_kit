import 'package:flutter/material.dart';
import 'package:ui_kit/logic/bloc/menu.bloc.dart';
import 'package:ui_kit/module/menu.dart';
import 'package:ui_kit/ui/widgets/about_tile.dart';
import 'package:ui_kit/ui/widgets/profile_tile.dart';
import 'package:ui_kit/utils/uidata.dart';

//主页面Widget
class HomePage extends StatelessWidget {
  final _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return homeScaffod(context);
  }

  //返回脚手架
  Widget homeScaffod(BuildContext context) => Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Scaffold(key: _scaffoldState, body: _bodySliverList()),
      );

  Widget _bodySliverList() {
    MenuBloc menuBloc = MenuBloc();
    return StreamBuilder<List<Menu>>(
      stream: menuBloc.menuItems,
      builder: (context, snapshot) {
        return snapshot.hasData
            ? CustomScrollView(
                slivers: <Widget>[
                  appBar(),
                  bodyGrid(snapshot.data),
                ],
              )
            : Center(child: CircularProgressIndicator());
      },
    );
  }

  //appBar
  Widget appBar() => SliverAppBar(
        backgroundColor: Colors.blueGrey.shade800,
        pinned: true,
        elevation: 10.0,
        forceElevated: true,
        expandedHeight: 150.0,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: false,
          background: Container(
//            child: new Image.network(UIData.homeToolBarBgImage, fit: BoxFit.fill),
//            decoration: BoxDecoration(
//                 gradient: LinearGradient(colors: UIData.kitGradients)),
            //更换头部背景
            child: new Stack(
              fit: StackFit.expand,
              children: <Widget>[
                new Image.network(UIData.homeToolBarBgImage, fit: BoxFit.fill),
                menuColor(),
              ],
            ),
          ),
          title: Row(
            children: <Widget>[
              FlutterLogo(
                colors: Colors.yellow,
                textColor: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(UIData.appName)
            ],
          ),
        ),
      );

  //bodygird
  Widget bodyGrid(List<Menu> data) => SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 0.0,
            crossAxisSpacing: 0.0,
            childAspectRatio: 1.0),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return menuStack(context, data[index]);
        }, childCount: data.length),
      );

  //每个item的View
  Widget menuStack(BuildContext context, Menu data) => InkWell(
        onTap: () => _showModalBottomSheet(context, data),
        splashColor: Colors.orange,
        child: Card(
          elevation: 5.0,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              menuImage(data),
              menuColor(),
              menuData(data),
            ],
          ),
        ),
      );

  //第一层
  Widget menuImage(Menu data) => AspectRatio(
        aspectRatio: 1.0,
        child: Image.asset(
          data.image,
          fit: BoxFit.cover,
        ),
      );

  //第二层
  Widget menuColor() => new Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.black.withOpacity(0.8), blurRadius: 5.0),
          ],
        ),
      );

  //第三层
  Widget menuData(Menu data) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            data.icon,
            color: Colors.white,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            data.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      );

  //每个item的点击事件
  void _showModalBottomSheet(BuildContext context, Menu data) {
    showModalBottomSheet(
        //自适应布局
        context: context,
        builder: (context) => Material(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.only(
                  topLeft: new Radius.circular(15.0),
                  topRight: new Radius.circular(15.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  header(),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: false,
                      itemCount: data.items.length,
                      itemBuilder: (context, i) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: ListTile(
                              title: Text(data.items[i]),
                              onTap: () {
                                print(" ======= " + "${data.pages[i]}");
                                Navigator.pop(context);
                                Navigator.pushNamed(
                                    context, "${data.pages[i]}");
                              },
                            ),
                          ),
                    ),
                  ),
                  MyAboutTile()
                ],
              ),
            ));
  }

  //bottomSheet的header
  Widget header() => Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: UIData.kitGradients2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage(UIData.pkImage),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProfileTile(
                  title: "Whg",
                  subtitle: "whg8908@gmail.com",
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
}
