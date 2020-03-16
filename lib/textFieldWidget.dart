import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//输入框

class textFieldWidget extends StatelessWidget{

  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    TextEditingController textChange = new TextEditingController();
//    textChange.addListener((){
//      print(textChange.text);
//    });

    var telTextField = TextField(
      autofocus: true,
      decoration: InputDecoration(
        hintText: "请输入手机号",
        labelText:"手机号",
        prefixIcon: Icon(Icons.add_call),
      ),
      keyboardType: TextInputType.number,
      onChanged: (value){
        print(value);
      },
    );
    var codeTextField = TextField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: "请输入密码",
        labelText:"密码",
        prefixIcon: Icon(Icons.create),
      ),
      keyboardType: TextInputType.number,
      obscureText: true,
      controller: textChange,
    );

    var textFormField = TextFormField(
      autofocus: true,
      decoration: InputDecoration(
        hintText: "请输入手机号",
        labelText:"手机号",
        prefixIcon: Icon(Icons.add_call),
      ),
      keyboardType: TextInputType.number,
      onChanged: (value){
        print(value);
      },
      controller: textChange,
      validator: (value){
        return value.length > 5 ? null : "长度不够";
      },
    );

    var form = Form(
        key: _formKey,
        autovalidate: true, //自动校验
        child: Column(
          children: <Widget>[
            textFormField,
            CupertinoButton(child: Text("提交"), onPressed: (){
              if((_formKey.currentState as FormState).validate()){
                print("objectobjectobject");
                print(textChange.text);
              }
            }
            ),
          ],
        )
    );


    return new Column(
      children: <Widget>[
        form,
      ],
    );
  }
}