import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//文本

class textWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    const style  = TextStyle(
        fontSize: 24,
        fontStyle: FontStyle.italic,
        color: Color(0xff6813cc)
    );

    var text = Text(
      "text",
      style: style,
      textAlign: TextAlign.center,
    );

    var textRich =  Text.rich(
        TextSpan(
            text: "开始",
            style: style,
            children: [
              TextSpan(
                  text: "标题",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff333333),
                  )
              ),
              TextSpan(
                text: "内容",
                children: [
                  TextSpan(
                      text: "子内容",
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xff999999),
                      )
                  )
                ],
              )
            ]
        )
    );

    return textRich;
  }
}