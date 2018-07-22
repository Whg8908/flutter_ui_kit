import 'package:flutter/material.dart';
import 'package:ui_kit/ui/widgets/common_drawer.dart';
import 'package:ui_kit/ui/widgets/common_float.dart';
import 'package:ui_kit/utils/uidata.dart';

//通用的空白页
class CommonScaffold extends StatelessWidget {
  final appTitle;
  final Widget bodyData;
  final showFAB;
  final showDrawer;
  final backGroundColor;
  final actionFirstIcon;
  final scaffoldKey;
  final showBottomNav;
  final floatingIcon;
  final centerDocked;
  final elevation;

  CommonScaffold(
      {this.appTitle,
      this.bodyData,
      this.showFAB = false,
      this.showDrawer = false,
      this.backGroundColor,
      this.actionFirstIcon = Icons.search,
      this.scaffoldKey,
      this.showBottomNav = false,
      this.floatingIcon,
      this.centerDocked = false,
      this.elevation = 4.0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey != null ? scaffoldKey : null,
      backgroundColor: backGroundColor != null ? backGroundColor : null,
      appBar: AppBar(
        elevation: elevation,
        backgroundColor: Colors.black,
        title: Text(appTitle),
        actions: <Widget>[
          SizedBox(
            width: 5.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(actionFirstIcon),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      drawer: showDrawer ? CommonDrawer() : null,
      body: bodyData,
      floatingActionButton: showFAB ? CustomFloat() : null,
      floatingActionButtonLocation: centerDocked
          ? FloatingActionButtonLocation.centerDocked
          : FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: showBottomNav ? myBottomBar() : null,
    );
  }

  Widget myBottomBar() => new BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Ink(
          height: 50.0,
          decoration: new BoxDecoration(
              gradient: new LinearGradient(colors: UIData.kitGradients)),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: double.infinity,
                child: new InkWell(
                  radius: 10.0,
                  splashColor: Colors.yellow,
                  onTap: () {},
                  child: Center(
                    child: new Text(
                      "ADD TO WISHLIST",
                      style: new TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              new SizedBox(
                width: 20.0,
              ),
              SizedBox(
                height: double.infinity,
                child: new InkWell(
                  onTap: () {},
                  radius: 10.0,
                  splashColor: Colors.yellow,
                  child: Center(
                    child: new Text(
                      "ORDER PAGE",
                      style: new TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
