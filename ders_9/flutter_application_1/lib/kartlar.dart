import 'package:flutter/material.dart';

class Kart extends StatelessWidget {
   final Widget? child;
   final Color? renk ;
   Kart([this.child,this.renk=Colors.white]);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin:EdgeInsets.all(5.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: renk),


    );
  }
}

TextStyle YaziStili=TextStyle(fontSize: 18,fontWeight: FontWeight.bold);
TextStyle SayiStili=TextStyle(fontSize: 35, color: Colors.blue, fontWeight: FontWeight.bold);