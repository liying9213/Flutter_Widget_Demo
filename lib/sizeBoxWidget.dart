import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'flexWidget.dart';

//定位

class sizeBoxWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var _sizeBox = new SizedBox(
      height: 300,
      width: 500,
      child: Stack(
        children: <Widget>[
          Positioned(
              left:10,
              top: 20,
              child:Container(
                width: 200,
                height: 50,
                color: Colors.deepOrangeAccent,
              )
          ),
          Positioned(
              right:10,
              bottom: 20,
              child:Container(
                width: 200,
                height: 150,
                color: Colors.deepOrangeAccent,
              )
          ),

          Positioned(
              right:10,
              bottom: 20,
              width: 200,
              child:flexWidget()
          ),


        ],
      ),
    );

    return _sizeBox;
  }
}