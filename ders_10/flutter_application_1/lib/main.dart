import 'package:flutter/material.dart';
import 'myApp.dart';


void main() {
  runApp( 

    MaterialApp(
      theme: ThemeData.dark().copyWith(
        
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),),
      home: MyApp(),)
  );
}
