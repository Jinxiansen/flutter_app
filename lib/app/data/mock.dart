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
    const Ball(title: '高拉特挑射破门，5-2', imageURL: 'https://img1.dongqiudi.com/fastdfs2/M00/57/86/640x400/-/-/ChOqM1qeXz6AA64JAAFsEOpj-zc852.jpg'),
    const Ball(title: "经纪人：比格利亚冬天拒绝了中超球队的报价；他想在米兰退役",imageURL: "https://img1.dongqiudi.com/fastdfs2/M00/57/CA/180x135/crop/-/ChOqM1qeyVqAZ8LRAAF2bpznHKs698.jpg"),
    const Ball(title: "布季米尔具体需要缺阵多长的时间还需要等待进一步评估。",imageURL: "https://img1.dongqiudi.com/fastdfs2/M00/57/D5/180x135/crop/-/ChNy21qexwaAX_h-AAEMR9UoMXs152.jpg"),
    const Ball(title: "意裁判主席：要让VAR更成熟",imageURL: "https://img1.dongqiudi.com/fastdfs2/M00/57/D1/180x135/crop/-/ChNy21qewOaAAkxzAAFI4Tfj4PM016.jpg"),
    const Ball(title: "米体：经纪人向拿坡里推荐阿萨",imageURL: "https://img1.dongqiudi.com/fastdfs2/M00/57/CF/180x135/crop/-/ChNy21qevTWAY2-MAADeQvGgW-8076.jpg"),
    const Ball(title: "客战佛罗伦萨，贝内文托将穿印有“再见阿斯托里”字样的球衣",imageURL: "https://img1.dongqiudi.com/fastdfs2/M00/57/CB/180x135/crop/-/ChNy21qet4aAMrLLAAOrrU9TxqY282.jpg"),
    const Ball(title: "德弗赖替身？蓝鹰看上九大目标",imageURL: "https://img1.dongqiudi.com/fastdfs2/M00/57/BF/180x135/crop/-/ChOqM1qetxaALtQfAACSGAqLTFU047.jpg"),
    const Ball(title: "谈巴西国门，塞萨尔称赞阿利松",imageURL: "https://img1.dongqiudi.com/fastdfs2/M00/57/C9/180x135/crop/-/ChNy21qetL-AevdxAAD2OIar6uU228.jpg"),
    const Ball(title: "强悍，尤文图斯2018年联赛全胜",imageURL: "https://img1.dongqiudi.com/fastdfs2/M00/57/C8/180x135/crop/-/ChNy21qespmAM7cpAAEkefzfttE678.jpg"),
    const Ball(title: "都体：国米想买弗尔萨利科",imageURL: "https://img1.dongqiudi.com/fastdfs2/M00/57/BC/180x135/crop/-/ChOqM1qestiAI1BxAADNUB2oJ2Q569.jpg"),
];