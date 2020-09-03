import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/constants/constants.dart';
import 'package:payment_app_ui/src/widgets/card_cuenta_origen.dart';
import 'package:payment_app_ui/src/widgets/circulos_widget.dart';
import 'package:payment_app_ui/src/widgets/icon_send_widget.dart';

class CardSend extends StatelessWidget {
  const CardSend({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only( top: 100.0, bottom: 30.0, left: 20.0, right: 20.0 ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 8.0,
        child: Stack(
          children: <Widget>[
            _fondoCard(),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only( top: 60.0, left: 10.0, right: 10.0 ),
              child: Column(
                children: <Widget>[
                  iconSend(),
                  SizedBox( height: 20.0 ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan( text: 'Send successfully to ', style: TextStyle( color: colorTextoSecundario, fontSize: 12.0 ) ),
                        TextSpan( text: 'Lela Crawford', style: TextStyle( color: colorTextoTitulo, fontWeight: FontWeight.bold, fontSize: 12.0 ) )
                      ]
                    )
                  ),
                  SizedBox( height: 20.0 ),
                  Text('\$100.00', style: TextStyle( color: colorPrimario, fontSize: 26.0, fontWeight: FontWeight.bold )),
                  SizedBox( height: 15.0 ),
                  cuentaOrigen(),
                  SizedBox( height: 10.0 ),
                  Divider(),
                  SizedBox( height: 10.0 ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan( text: 'Transaction done on ', style: TextStyle( color: colorTextoSecundario, fontSize: 12.0 ) ),
                        TextSpan( text: '12 January 2020.', style: TextStyle( color: colorTextoTitulo, fontWeight: FontWeight.w600, fontSize: 12.0 ) )
                      ]
                    )
                  ),
                  SizedBox( height: 5.0 ),
                  Text('Your reference number is 03492390', style:  TextStyle( color: colorTextoSecundario, fontSize: 12.0 )),

                  SizedBox( height: 30.0 ),

                  Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)
                      ),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                          
                          gradient: LinearGradient(
                            transform: GradientRotation(-80),
                            colors: [
                              colorSecundario,
                              colorPrimario
                            ],
                            begin: FractionalOffset(.18, .9),
                            end: FractionalOffset(.4, -0.2)
                          ),
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: 300.0,
                            minWidth: 50.0
                          ),
                          alignment: Alignment.center,
                          child: Text('Continue', style: TextStyle( color: colorTextoBlanco, fontSize: 16.0, fontWeight: FontWeight.bold ),),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _fondoCard(){
    return Container(
      width: 350.0,
      height: 455.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: -80.0,
            top: -80.0,
            child: circulo1()
          ),
          Positioned(
            right: -90.0,
            bottom: -90.0,
            child: circulo1()
          )
        ],
      ),
    );
  }
}