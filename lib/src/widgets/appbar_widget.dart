import 'package:flutter/material.dart';

Widget appBar(){
  final appBar = Container(
    padding: EdgeInsets.symmetric( horizontal: 8.0, vertical: 5.0 ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.keyboard_backspace, color: Colors.white), 
          onPressed: (){}
        ),
        IconButton(
          icon: Image.asset('assets/menu.png', height: 20.0), 
          onPressed: (){}
        )
      ],
    ),
  );

  return SafeArea(
    child: appBar
  );
}