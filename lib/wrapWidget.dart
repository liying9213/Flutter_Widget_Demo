import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class wrapWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var _wrap = new Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.end,
      children: <Widget>[
        Container(
          width: 100,
          height: 60,
          color: Colors.amberAccent,
        ),
        Container(
          width: 80,
          height: 60,
          color: Colors.blueAccent,
        ),
        Container(
          width: 60,
          height: 60,
          color: Colors.brown,
        ),
        Container(
          width: 70,
          height: 60,
          color: Colors.deepPurple,
        ),
        Container(
          width: 70,
          height: 60,
          color: Colors.indigoAccent,
        ),
        Container(
          width: 70,
          height: 60,
          color: Colors.cyanAccent,
        ),
      ],
    );
    return _wrap;
  }
}