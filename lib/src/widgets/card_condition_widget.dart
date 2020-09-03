
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:payment_app_ui/src/constants/constants.dart';

final GlobalKey<AnimatedCircularChartState> _chartKey = new GlobalKey<AnimatedCircularChartState>();

Widget cardCondicion(){
  final card = Padding(
    padding: const EdgeInsets.symmetric( horizontal: 15.0 ),
    child: Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.only( top: 10.0, left: 10.0, right: 10.0 ),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  circularChart(),
                  SizedBox( width: 5.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Good Financial', style: TextStyle( color: colorTextoTitulo, fontWeight: FontWeight.bold, fontSize: 16.0 )),
                      Text('Your financial condition is good', style: TextStyle( color: colorTextoSecundario ),)
                    ],
                  )
                ],
              ),
            ),
           SizedBox( height: 12.0 ),
           Divider( height: .5),
           FlatButton(
             onPressed: (){}, 
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text('View Statistic', style: TextStyle( color: colorPrimario, fontWeight: FontWeight.w400 )),
                 Icon(Icons.keyboard_arrow_right, color: colorPrimario)
               ],
             )
            )
          ],
        ),
      ),
    ),
  );

  return card;
}

Widget circularChart(){
  return Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Container(
        width: 35.0,
        height: 35.0,
        decoration: BoxDecoration(
          color: colorPrimario,
          borderRadius: BorderRadius.circular(25.0)
        ),
      ),
      AnimatedCircularChart(
        holeRadius: 18.0,
        key: _chartKey,
        size: Size(55.0,55.0), 
        initialChartData: <CircularStackEntry>[
          new CircularStackEntry(
            <CircularSegmentEntry>[
              new CircularSegmentEntry(80.0, colorPrimario, rankKey: 'completado'),
              new CircularSegmentEntry(20.0, colorCirculo.withOpacity(.7), rankKey: 'resto')
            ],
            rankKey: 'progreso'
          )
        ],
        chartType: CircularChartType.Radial,
        percentageValues: true,
        holeLabel: '80',
        labelStyle: new TextStyle(
          color: colorTextoBlanco,
          fontWeight: FontWeight.w500,
          fontSize: 18.0
        ),
      )
    ],
  );
}