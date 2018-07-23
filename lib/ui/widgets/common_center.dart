import 'package:flutter/material.dart';
import 'package:ui_kit/ui/widgets/profile_tile.dart';

class CommonCenter extends StatelessWidget {
  final title;
  final subtitle;

  Size deviceSize;

  CommonCenter({this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return Container(
//      decoration: BoxDecoration(
//        gradient: LinearGradient(colors: UIData.kitGradients),
//      ),
      height: deviceSize.height * 0.1,
      alignment: Alignment.center,
      child: Center(
        child: ProfileTile(
          title: title,
          subtitle: subtitle,
        ),
      ),
    );
  }
}
