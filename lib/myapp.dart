import 'package:flutter/material.dart';
import 'package:ui_kit/utils/uidata.dart';

class MyApp extends StatelessWidget {
  final materialApp = new MaterialApp(
    title: UIData.appName,
    theme: new ThemeData(
      primaryColor: Colors.black,
      primarySwatch: Colors.amber,
      fontFamily: UIData.quickFont,
    ),
    home: new MyHomePage(title: 'Flutter Demo Home Page'),
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
