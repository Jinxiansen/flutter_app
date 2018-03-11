
import 'package:flutter_app/app/ui/nav_view.dart';
import 'package:flutter_app/app/ui/list_view.dart';
import 'package:flutter/material.dart';

final _kThemeRoot = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.green
);


class CookingApp extends StatefulWidget {

  CookingAppState createState() => new CookingAppState();
}


class CookingAppState extends State<CookingApp> implements BottomNavStatus {

  Widget _home;
  Widget _bodyContent;


  @override
  void initState() {
    super.initState();

    _bodyContent = new BallScrollListView();

    _home = new Scaffold(
        appBar: new AppBar(
            title: new Text("flutter 示例")
        ),
        body: _bodyContent,
        bottomNavigationBar: new BottomNavView(this)
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: _kThemeRoot,
        home: _home
    );
  }

  @override
  void onTapChangeIndex(int position) {
    setState(() {
      if(position == 0) {
        _bodyContent = new BallScrollListView();
      } else {
        _bodyContent = new BallScrollListView();
      }
    });
  }

}


