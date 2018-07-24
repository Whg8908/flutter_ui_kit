import 'package:flutter/material.dart';
import 'package:ui_kit/ui/widgets/common_switch.dart';
import 'package:ui_kit/ui/widgets/commons_scafflod.dart';
import 'package:ui_kit/utils/uidata.dart';

class SettingsOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appTitle: "设置",
      showDrawer: false,
      showFAB: false,
      backGroundColor: Colors.grey.shade300,
      bodyData: bodyData(),
    );
  }

  Widget bodyData() => SingleChildScrollView(
        child: Theme(
            data: ThemeData(fontFamily: UIData.ralewayFont),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "常规设置",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 2.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        title: Text("账户"),
                        trailing: Icon(Icons.arrow_right),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.mail,
                          color: Colors.red,
                        ),
                        title: Text("邮箱"),
                        trailing: Icon(Icons.arrow_right),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.sync,
                          color: Colors.blue,
                        ),
                        title: Text("数据同步"),
                        trailing: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "网络",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 2.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.sim_card,
                          color: Colors.grey,
                        ),
                        title: Text("Sim卡"),
                        trailing: Icon(Icons.arrow_right),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.wifi,
                          color: Colors.yellow,
                        ),
                        title: Text("Wifi"),
                        trailing: CommonSwitch(defValue: true),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.bluetooth,
                          color: Colors.blue,
                        ),
                        title: Text("蓝牙"),
                        trailing: CommonSwitch(defValue: true),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.more_horiz,
                          color: Colors.grey,
                        ),
                        title: Text("更多设置"),
                        trailing: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "声音",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 2.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.do_not_disturb_off,
                          color: Colors.orange,
                        ),
                        title: Text("静音模式"),
                        trailing: CommonSwitch(
                          defValue: true,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.vibration,
                          color: Colors.purple,
                        ),
                        title: Text("振动模式"),
                        trailing: CommonSwitch(
                          defValue: true,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.volume_up,
                          color: Colors.green,
                        ),
                        title: Text("音量"),
                        trailing: Icon(Icons.arrow_right),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.phonelink_ring,
                          color: Colors.grey,
                        ),
                        title: Text("响铃"),
                        trailing: Icon(Icons.arrow_right),
                      )
                    ],
                  ),
                ),
              ],
            )),
      );
}
