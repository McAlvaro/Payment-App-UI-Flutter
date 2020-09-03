import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/constants/constants.dart';
import 'package:payment_app_ui/src/widgets/appbar_widget.dart';
import 'package:payment_app_ui/src/widgets/card_condition_widget.dart';
import 'package:payment_app_ui/src/widgets/cards_detail_widget.dart';
import 'package:payment_app_ui/src/widgets/circulos_widget.dart';
import 'package:payment_app_ui/src/widgets/total_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondo(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              appBar(),
              total('1,750.50'),
              SizedBox( height: 15.0 ),
              cardCondicion(),
              SizedBox( height: 10.0 ),
              CardsDetail()
            ],
          )
        ],
      )
    );
  }

  Widget _fondo(){
    final boxTop = Container(
      height: 220.0,
      width: double.infinity,
      color: colorPrimario,
    );
    

    return Stack(
      children: <Widget>[
        boxTop,
        Positioned(
          left: -50.0,
          top: -65.0,
          child: circulo1()
        ),
        Positioned(
          right: -25.0,
          top: -48.0,
          child: circulo2()
        )
      ],
    );
  }
}