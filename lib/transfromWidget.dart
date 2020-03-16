import 'package:flutter/material.dart';
import 'dart:math' as math;

class transfromWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var _transfromx = Transform(
      transform: new Matrix4.skewX(0.5),
      child: Text("Matrix4.skewX"),
    );
    var _transfromy = Transform(
      transform: new Matrix4.skewY(0.5),
      child: Text("Matrix4.skewY"),
    );
    var _transfromscale = Transform.scale(
      scale: 1.1,
      child: Text("Transform.scale"),
    );
    var _transfromrotate = Transform.rotate(
      angle: math.pi/2,
      child: Text("Transform.rotate"),
    );
    var _transfromtranslate = Transform.translate(
      offset: Offset(20, 30),
      child: Text("Transform.rotate"),
    );

    var _wrap = Wrap(
      spacing: 20,
      runSpacing: 15,
      children: <Widget>[
        Container(
          width: 100,
          height: 80,
          color: Colors.brown,
          child: Container(
            color: Colors.cyanAccent,
            child: _transfromx,
          ),
        ),
        Container(
          width: 100,
          height: 80,
          color: Colors.brown,
          child: Container(
            color: Colors.cyanAccent,
            child: _transfromy,
          ),
        ),
        Container(
          width: 100,
          height: 80,
          color: Colors.brown,
          child: Container(
            color: Colors.cyanAccent,
            child: _transfromscale,
          ),
        ),
        Container(
          width: 100,
          height: 80,
          color: Colors.brown,
          child: Container(
            color: Colors.cyanAccent,
            child: _transfromrotate,
          ),
        ),
        Container(
          width: 100,
          height: 80,
          color: Colors.brown,
          child: Container(
            color: Colors.cyanAccent,
            child: _transfromtranslate,
          ),
        )
      ],
    );

    return _wrap;
  }
}