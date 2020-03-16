import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scrollWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var _scroll = new Scrollbar(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.cyanAccent,
          height: 1000,
        ),
      ),
    );

    var _list = Column(
      children: <Widget>[
        ListTile(title: Text("title")),
        Container(
          height: 500,
          child: ListView.builder(
            itemCount: 20,
            itemExtent: 50,
            itemBuilder: (BuildContext context, int index){
              if(index == 12){
                return Container(
                  color: Color(0xff343434),
                  child: Text("item"+index.toString()),
                );
              }

              return Text("item"+index.toString());
            },
          ),
        ),
      ],
    );

    var _graidView = GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: <Widget>[
        Container(
          color: Colors.cyanAccent,
          child: Text("1"),
        ),
        Container(
          color: Colors.yellow,
          child: Text("1"),
        ),
        Container(
          color: Colors.deepOrangeAccent,
          child: Text("1"),
        ),
        Container(
          color: Colors.red,
          child: Text("1"),
        ),
        Container(
          margin: EdgeInsets.all(10),
          color: Colors.orange,
          child: Text("1"),
        ),

      ],
    );

    return _list;
  }
}