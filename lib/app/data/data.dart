import 'dart:async';

class Ball {

  final String title;
  final String imageURL;

  const Ball({this.title, this.imageURL});

  Ball.fromMap(Map<String, dynamic>  map) :
        title = "${map['title']}",
        imageURL = "${map['image_url']}";

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