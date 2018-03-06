
import 'package:flutter_app/app/data/data.dart';
import 'package:flutter/material.dart';

class BallItem extends StatelessWidget {

  final Ball _ball;
  final ScaffoldState _parentView;

  BallItem(this._ball,this._parentView);

  @override
  Widget build(BuildContext context) {

    List<Widget> _widgets = [
      new SizedBox(
        width: 800.0,
        height: 200.0,
        child: new Image.network(
          _ball.imageURL
        )
      ),

      new Padding(padding:
          new EdgeInsets.only(top: 10.0,left: 10.0,bottom: 5.0),
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
              _parentView.showSnackBar(
                new SnackBar(content: new Text("并不能查看。😂",textAlign: TextAlign.center )
                )
              );
            },
          ),

        ),
      )

    ];

    return new Padding(padding:
      new EdgeInsets.all(10.0),
      child: new Card(
        elevation: 2.5,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _widgets,
        ),

      ),

    );
  }

}