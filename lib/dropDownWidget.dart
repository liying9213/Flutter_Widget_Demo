import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//下拉框

class dropDownWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _dropDownWidget();
  }
}

class _dropDownWidget extends State <dropDownWidget>{

  List getDropList(){
    List <DropdownMenuItem> dropList = new List();
    dropList.add(DropdownMenuItem(child: new Text("北京"),value: "beijing"));
    dropList.add(DropdownMenuItem(child: new Text("上海"),value: "shanghai"));
    dropList.add(DropdownMenuItem(child: new Text("广州"),value: "guangzhou"));
    dropList.add(DropdownMenuItem(child: new Text("深圳"),value: "shenzhen"));
    return dropList;
  }

  var selectDropValue;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new DropdownButton(
            items: getDropList(),
            hint: Text("请选择城市"),
            value: this.selectDropValue,
            onChanged: (value){
              setState(() {
                this.selectDropValue = value;
              });
            }
        )
      ],
    );
  }
}