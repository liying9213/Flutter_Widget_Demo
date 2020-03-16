import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pushWidget.dart';

//弹性布局

class flexWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var flex = new Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        Expanded(
          flex: 1,
          child:GestureDetector(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new pushWidget("","")));
              print("onTap");
            },
            onDoubleTap: (){

              print("onDoubleTap");
            },
            onLongPress: (){
              print("onLongPress");
            },
            child: Container(
              height: 200,
              color: Colors.red,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 200,
            color: Colors.yellow,
            child: Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10,left: 5),
                      color: Colors.cyan,
                    )
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.all(5),
                      color: Colors.brown,
                      child: Container(
                        color: Colors.white70,
                      ),
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 44,
                  color: Colors.deepOrangeAccent,
                ),
              ],
            )
            ,
          ),
        ),
        Expanded(
          flex: 1,
          child: Listener(
            onPointerDown: (status){
              print("down");
            },
            onPointerUp: (status){
              print("up");
            },
            onPointerMove: (status){
              print("move");
            },
            child: Container(
              height: 200,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );


    return flex;
  }
}