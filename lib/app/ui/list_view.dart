
import 'package:flutter_app/app/data/data.dart';
import 'package:flutter_app/app/module/presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/ui/items.dart';

class BallScrollListView extends StatefulWidget {

  @override
  BallScrollListViewState createState() {
    BallScrollListViewState state = new BallScrollListViewState();
    new BallListPresenter(state);
    return state;
  }

}

class BallScrollListViewState extends State<BallScrollListView>
    implements BallListViewContract {

//  static const String routeName = "/home";

  final _kHeightItem = 250.0;

  BallListPresenter _presenter;
  List<Ball> _balls;
  bool _isLoading;
  bool _isError = false;

  ScaffoldState _parentView;

  @override
  void setPresenter(BallListPresenter presenter) {
    _presenter = presenter;
  }

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _presenter.loadBalls();
  }

  @override
  Widget build(BuildContext context) {
    Widget widget;

    _parentView = Scaffold.of(context);

    if (_isLoading) {
      widget = new Center(
          child: new Padding(
              padding: const EdgeInsets.only(left: 116.0, right: 16.0),
              child: new CircularProgressIndicator()
          )
      );
    } else {

      if(_isError || _balls == null || _balls.isEmpty ) {
        widget = new Center(
            child: new Text("Error fetching server data")
        );
      } else {
        widget = new ListView(
            itemExtent: _kHeightItem,
            children: _buildBallsWidgetList()

        );
      }

    }

    return widget;
  }

  @override
  void onLoadBallComplete(List<Ball> Balls) {
    setState(() {
      _balls = Balls;
      _isLoading = false;
    });
  }


  @override
  void onLoadBallError() {
    setState(() {
      _isError = true;
    });
  }

  List<Widget> _buildBallsWidgetList() {
    List<Widget> list = new List<Widget>();

    _balls.forEach((Ball) => list.add(new BallItem(Ball, _parentView)));
    return list;
  }

}

