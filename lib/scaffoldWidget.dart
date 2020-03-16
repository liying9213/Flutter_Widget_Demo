import 'package:flutter/material.dart';
import 'scrollWidget.dart';
import 'flexWidget.dart';
import 'wrapWidget.dart';
import 'tabBarWidget.dart';
import 'networkWidget.dart';

class scaffoldWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _scaffoldWidget();
  }
}

class _scaffoldWidget extends State <scaffoldWidget>{
  int currentIndex = 0;
  List pageList = [
    tabBarWidget(),
    flexWidget(),
    networkWidget(),
//    wrapWidget(),
  ];

  List _titleAry = [
    "首页","购物车","通讯录"
  ];
  GlobalKey <ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var _scaffold = Scaffold(
      key: _globalKey,
      appBar: AppBar(
        centerTitle:true ,
        title: Text(this._titleAry[this.currentIndex]),
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){
          _globalKey.currentState.openDrawer();
        },),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: (){
          }),
          IconButton(icon: Icon(Icons.add_to_queue), onPressed: (){
          }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.red,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit),title: Text("首页")),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),title: Text("购物车")),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),title: Text("通讯录")),
//            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("个人")),
          ],
        currentIndex: this.currentIndex,
        onTap: (index){
          setState(() {
            this.currentIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){

        },
      ),
       body: this.pageList[this.currentIndex],
      drawer: Container(
        width: 300,
        color: Colors.deepPurple,
        child: Column(
          children: <Widget>[
            Text("drawer list View"),
          ],
        ),
      ),
    );

    return _scaffold;
  }

}