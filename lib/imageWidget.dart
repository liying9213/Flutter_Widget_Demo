import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//图片

class imageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var image = Image.asset("source/img/1.png",
      width: 200,
    );
    var netImage = Image.network(
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1583999166019&di=3e474ff2d4e89892947c28fd569db409&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F78%2F52%2F01200000123847134434529793168.jpg",
      width: 100,
      color: Color(0xff789234),
      colorBlendMode: BlendMode.difference,
    );
    return netImage;
  }
}