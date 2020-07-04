import 'package:flutter/material.dart';
import 'package:Calculator/homepage.dart';

void main(List<String> args) {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: "Calculator",
       theme: new ThemeData(
         primarySwatch: Colors.red
        
       ),
        home: new HomePage(),
     );
   }
 }
