import 'package:flutter/material.dart';

class tabBarWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _tabBarWidget();
  }
}

class _tabBarWidget extends State <tabBarWidget> with TickerProviderStateMixin{
  List _title = ["第一","第二","第三","第四"];

  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._controller = TabController(length: _title.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var _column = Column(
      children: <Widget>[
        Container(
          color: Colors.pink,
          child: TabBar(
            controller: _controller,
            tabs: <Widget>[
              Container(
                color: Colors.orange,
                child: Text(_title[0]),
              ),
              Container(
                color: Colors.red,
                child: Text(_title[1]),
              ),
              Container(
                color: Colors.yellow,
                child: Text(_title[2]),
              ),
              Container(
                color: Colors.white70,
                child: Text(_title[3]),
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          child: TabBarView(
            controller: _controller,
            children: <Widget>[
              Container(
                height: 400,
                color: Colors.black12,
                child: Text(_title[0]),
              ),
              Container(
                height: 400,
                color: Colors.black12,
                child: Text(_title[1]),
              ),
              Container(
                height: 400,
                color: Colors.black12,
                child: Text(_title[2]),
              ),
              Container(
                height: 400,
                color: Colors.black12,
                child: Text(_title[3]),
              ),
            ],
          ),
        ),
      ],
    );

    return _column;
  }
}