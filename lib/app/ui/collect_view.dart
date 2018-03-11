
import 'package:flutter/material.dart';

class BallCollectView extends StatelessWidget {

  static const String routeName = '/collect';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('收藏页'),

      ),
      body: new Container(
        child: new Center(
          child: new Text('收藏数据',style: new TextStyle(fontSize: 30.0,color: Colors.red))
        ),
      ),
    );
  }
}