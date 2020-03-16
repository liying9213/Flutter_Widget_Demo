import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//单选框、开关

class switchAndCheckBoxWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _switchAndCheckBoxWidget();
  }
}
class _switchAndCheckBoxWidget extends State <switchAndCheckBoxWidget>{

  bool changeVale = false;



  @override
  Widget build(BuildContext context) {

    return new Column(
      children: <Widget>[
        CupertinoSwitch(
          value: changeVale,
          onChanged: (value){
          setState(() {
            this.changeVale = value;
          });
          },
        ),
        Switch(
          value: changeVale,
          onChanged: (value){
          setState(() {
            this.changeVale = value;
          });
          },

        ),
        Checkbox(
          value: changeVale,
          onChanged: (value){
            setState(() {
              this.changeVale = value;
            });
          },
        )
      ],
    );;
  }
}