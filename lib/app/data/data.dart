import 'dart:async';

class Ball {

  final String title;
  final String imageURL;
  final String subTitle;

  const Ball({this.title, this.subTitle, this.imageURL});

  Ball.fromMap(Map<String, dynamic>  map) :
        title = "${map['title']}",
        subTitle = "${map['description']}",
        imageURL = "${map['thumb']}";
}


abstract class BallRepository {
    Future<List<Ball>> fetch();
}

class FetchDataException implements Exception {

    String _message;

    FetchDataException(this._message);

    String toString() {
      return 'Exception: $_message';
    }
}