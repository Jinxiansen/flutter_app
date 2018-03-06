import 'package:flutter_app/app/data/data.dart';
import 'package:flutter_app/app/data/injection.dart';

abstract class BallListViewContract {
  void setPresenter(BallListPresenter presenter);
  void onLoadBallComplete(List<Ball> balls);
  void onLoadBallError();

}

abstract class BallListPresenterContract {
  void loadBalls();
}

class BallListPresenter implements BallListPresenterContract {

  BallListViewContract _view;
  BallRepository _repository;

  BallListPresenter(this._view) {
    _repository = new Injector().ballRepository;
    _view.setPresenter(this);
  }

  void loadBalls() {
    assert(_view != null);

    _repository.fetch()
      .then((balls) => _view.onLoadBallComplete(balls))
      .catchError((onError) {
          print(onError);
          _view.onLoadBallError();
    });
  }
}



