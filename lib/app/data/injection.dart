
import 'data.dart';
import 'imp.dart';
import 'mock.dart';

enum Data {
  MOCK,
  REAL
}

class Injector {

  static final Injector _singleton = new Injector._internal();
  static Data _data;

  static configureData(Data data) {
    _data = data;
  }

  factory Injector() {
    return _singleton;
  }

  Injector._internal();


  BallRepository get ballRepository {
    switch (_data) {
      case Data.MOCK:
        return new MockBallRepository();
        break;

       default:
         return new RemoteBallRepository();
    }
  }

}