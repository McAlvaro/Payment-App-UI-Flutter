import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/constants/constants.dart';

Widget iconSend(){
  return Stack(
    children: <Widget>[
      CircleAvatar(
        radius: 30.0,
        backgroundColor: colorSecundario.withOpacity(.3),
        child: Image.asset('assets/send.png', color: colorSecundario, width: 25.0,)
      ),
      Positioned(
        right: 3.0,
        bottom: 4.0,
        child: CircleAvatar(
          radius: 8.0,
          backgroundColor: colorPrimario,
          child: Icon(Icons.check, size: 10.0),
        ),
      ),
      Positioned(
        top: 10.0,
        right: 20.0,
        child: Container(
          height: 4.0,
          width: 4.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.0),
            color: colorPrimario
          ),
        ),
      ),
      Positioned(
        top: 38.0,
        left: 10.0,
        child: Container(
          height: 4.0,
          width: 4.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.0),
            color: colorPrimario
          ),
        ),
      ),

      Positioned(
        bottom: 12.0,
        right: 25.0,
        child: Container(
          height: 3.0,
          width: 3.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.0),
            color: colorPrimario
          ),
        ),
      )
    ],
  );
}