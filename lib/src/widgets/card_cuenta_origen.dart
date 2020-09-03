import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/constants/constants.dart';

Widget cuentaOrigen(){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          maxRadius: 20.0,
          backgroundImage: AssetImage('assets/user.jpg'),

        ),
        SizedBox( width: 10.0 ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('John Crawford', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 14.0 )),
            Text('John123@gmail.com', style: TextStyle( color: colorTextoSecundario, fontSize: 11.0 ))
          ],
        )
      ],
    ),
  );
}