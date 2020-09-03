import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/constants/constants.dart';

Widget circulo1(){
  final circulo1 = Container(
      height: 150.0,
      width: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80.0),
        color: colorCirculo.withOpacity(0.3)
      ),
    );

  return circulo1;
}

Widget circulo2(){
  final circulo2 = Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80.0),
        color: colorCirculo.withOpacity(0.3)
      ),
    );
  return circulo2;
}