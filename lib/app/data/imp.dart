
import 'dart:async';
import 'dart:convert';
import 'package:flutter_app/app/data/data.dart';
import 'package:flutter/services.dart';

class RemoteBallRepository implements BallRepository {

  static const _apiURL = 'https://api.dongqiudi.com/app/tabs/iphone/56.json';


  final JsonDecoder _decoder = new JsonDecoder();

  @override
  Future<List<Ball>> fetch() async {

    var client = createHttpClient();
    var response = await client.get(_apiURL);

    final String jsonBody = response.body;
    final statusCode = response.statusCode;

    final container = _decoder.convert(jsonBody);
    final List items = container['articles'];

    return items.map((contactRaw) => new Ball.fromMap(contactRaw)).toList();
  }

}


