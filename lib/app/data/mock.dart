import 'dart:async';
import 'data.dart';


class MockBallRepository implements BallRepository {

  @override
  Future<List<Ball>> fetch() {
    // TODO: implement fetch
    return new Future.value(staticBalls);
  }
}

const staticBalls = const <Ball> [
    const Ball(title: '权健客场3-6全北，张诚世界波，赵旭日破门，金信煜戴帽', imageURL: 'https://img1.dongqiudi.com/fastdfs2/M00/57/94/180x135/crop/-/ChOqM1qeftuAX4ehAAIoWxywYbI757.jpg'),
    const Ball(title: '接手巴黎后，卡塔尔财团在引援上花了多少钱？', imageURL: 'https://img1.dongqiudi.com/fastdfs2/M00/57/B5/180x135/crop/-/ChNy21qenLKABNcSAANyeaMtTkM830.jpg'),
];