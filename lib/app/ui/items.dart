
import 'package:flutter_app/app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:url_launcher/url_launcher.dart';

class BallItem extends StatelessWidget {

  final Ball _ball;
  final ScaffoldState _parentView;

  BallItem(this._ball,this._parentView);

  final webViewplugin = new FlutterWebviewPlugin();

  void showMyDialog(BuildContext context) {

    AlertDialog dialog = new AlertDialog(actions: <Widget>[
      new CloseButton(),
    ],content:new Text( _ball.title + '\n' + _ball.subTitle,
        textAlign: TextAlign.center,
        style:new TextStyle(fontSize: 20.0,
            color: Colors.black54)));

    showDialog(context: context, child: dialog);


  }

  @override
  Widget build(BuildContext context) {

    List<Widget> _widgets = [
      new SizedBox(
        width: 800.0,
        height: 160.0,
        child: new Image.network(
          _ball.imageURL
        ),
      ),

      new Padding(padding:
          new EdgeInsets.only(top: 5.0,left: 10.0 , right: 10.0),
        child: new Text(
          _ball.title,
          maxLines: 1,
        ),
      ),

      new SizedBox(
        child: new Align(
          alignment: FractionalOffset.bottomRight,
          child: new FlatButton(
            child: new Text('查看'),
            onPressed: () {
              print('点中了');
//              webViewplugin.launch(_ball.imageURL);
              launch('http://www.baidu.com');
              
//              _parentView.showSnackBar(
//                new SnackBar(content: new Text("并不能查看。😂",textAlign: TextAlign.center )
//                )
//              );
            },
          ),

        ),
      )

    ];

    return new Padding(padding:
      new EdgeInsets.all(10.0),
      child: new Card(
        elevation: 2.5,
        child: new InkWell(
          onTap: () {
          print('点击了');
          showMyDialog(context);
        },
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _widgets,
          ),
        ),
      ),
    );
  }

}