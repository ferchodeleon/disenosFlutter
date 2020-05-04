import 'package:flutter/material.dart';

import 'package:disenos/src/page/botones_page.dart';
import 'package:disenos/src/page/basico_page.dart';
import 'package:disenos/src/page/scroll_page.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        'basico'  : ( BuildContext contex ) => BasicoPage(),
        'scroll'  : ( BuildContext context ) => ScrollPage(),
        'botones' : (BuildContext context)  => BotonesPage()
      },
    );
  }
}