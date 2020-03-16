import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//线性布局

class rowAndColumnWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var row = new Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          color: Color(0xffeeeeee),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text("testtestttsss"),
              Text("testtesttesttestxxxtesttest"),
              Text("testtesttesttesxxxxt"),
              Text("testtesttesttesxxxesttesttesttest"),
              Text("testtesttesttest"),
              Text("testtesttesttesttesttesttesttesttesttestt"),
            ],
          ),
        ),
        Container(
          width: 200,
          height: 100,
          color: Color(0xffaaaaaa),
          child: Column(
            children: <Widget>[
              Text("testtesttesttest"),
              Text("testtesttesttest"),
              Text("testtesttesttest"),
              Text("testtesttesttest"),
            ],
          ),
        ),
      ],
    );
    return row;
  }
}