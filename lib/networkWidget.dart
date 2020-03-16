import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'pushWidget.dart';


class networkWidget extends StatefulWidget {
  @override
  _networkWidgetState createState() => _networkWidgetState();
}

class _networkWidgetState extends State<networkWidget> {
  List _array = new List();
  String _str = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: FlatButton(
              onPressed: () async{
                Dio request = Dio();
                Response data = await request.get("https://api.carelink.cn/app/hospital/getHospitalTypeList");
                print(data.data.toString());
                Map map = json.decode(data.data.toString());
                print(map);
                setState(() {
                  _array = map["data"];
                });
              },
              child: Text("请求数据"),
          ),
        ),
        Container(
          height: 400,
          color: Colors.white30,
          child: ListView.builder(
            itemCount: _array != null ? _array.length : 0,
            itemExtent: 50,
            itemBuilder: (BuildContext context, int index){

              var label = ListTile(
                title: Text(_array != null ? _array[index]["name"]:""),
                onTap: () async{
                  String result = await Navigator.push(context, new MaterialPageRoute(builder: (context)=>pushWidget(_array != null ? _array[index]["name"]:"", _array != null ? _array[index]["id"].toString():""))) as String;
                  print(result);

                },
              );
              return label;
              },
          ),
        ),
      ],
    );
  }
}
