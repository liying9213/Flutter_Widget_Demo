import 'package:flutter/material.dart';

class pushWidget extends StatelessWidget {
  String title;
  var id;
  @override
  pushWidget(this.title, this.id);
  @override
  Widget build(BuildContext context) {
    var view = Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: FlatButton(
          onPressed: (){
            Navigator.pop(context,"pppppppppp");
          },
          child: Text("back"+this.id),
      ),
    );
    return view;
  }
}
