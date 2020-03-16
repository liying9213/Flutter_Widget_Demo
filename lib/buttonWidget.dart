import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//按钮

class buttonWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var raisedBtn = RaisedButton(
      child: Text("RaisedButton"),
      onPressed: (){
        buttonTapAction("RaisedButton");
      }
    );

    var flatBtn = FlatButton(
      child: Text("FlatButton"),
      color: Color(0xfff5f5f5),
      textColor: Color(0xff333333),
      highlightColor: Color(0xffeeeeee),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      onPressed: (){
        buttonTapAction("FlatButton");
      }
    );

    var outlineBtn = OutlineButton(
      child: Text("OutlineButton"),

        onPressed: (){
          buttonTapAction("OutlineButton");
        }
    );

    var iosBtn = CupertinoButton(
        child: Text("iOS Button"),
        color: Color(0xff333333),
        onPressed: (){
          buttonTapAction("Button");
        }

    );

    return new Column(
      children: <Widget>[
//        raisedBtn,
//        flatBtn,
//        outlineBtn,
        iosBtn,
      ],
    );
  }
}


Future<void> buttonTapAction(String name) async {
  print("== $name  Action ==" );
}