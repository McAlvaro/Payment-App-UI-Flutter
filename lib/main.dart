import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/pages/home_page.dart';
import 'package:payment_app_ui/src/pages/send_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/'     : (BuildContext context) => HomePage(),
        'send'  : (BuildContext context) => SendPage()
      },
    );
  }
}