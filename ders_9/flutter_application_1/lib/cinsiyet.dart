import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CinsiyetBilgisi extends StatelessWidget {
final IconData ikon;
final String cinsiyet;
CinsiyetBilgisi(this.cinsiyet,this.ikon);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Icon(ikon,size: 50,),
      SizedBox(height: 10),
      Text(cinsiyet,style: TextStyle(fontSize: 20 ),),

    ],);
    
  }
}