import 'package:flutter/material.dart';
import 'package:flutter_app/app/ui/collect_view.dart';

abstract class BottomNavStatus {

  void onTapChangeIndex(int position);

}

class BottomNavView extends StatefulWidget {
  BottomNavStatus listener;
  BottomNavView(this.listener);

  BottomNavState createState() => new BottomNavState(listener);
}

class BottomNavState extends State<BottomNavView> {
  BottomNavStatus _kTapListener;
  List<BottomNavigationBarItem> _kBottomNavItems;
  int _currentIndex = 0;

  BottomNavState(this._kTapListener);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _kBottomNavItems = <BottomNavigationBarItem>[
      new BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('首页')),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.favorite),

          title: new Text('收藏'))
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new BottomNavigationBar(
        items: _kBottomNavItems,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState((){
            _currentIndex = index;
            _kTapListener.onTapChangeIndex(index);
            print('当前点击 $index');
            if (index == 1) {
              Navigator.of(context).pushNamed(BallCollectView.routeName);
            }
          });
        }
    );
  }
}