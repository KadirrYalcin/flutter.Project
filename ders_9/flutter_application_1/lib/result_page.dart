
import 'package:flutter/material.dart';
import './kartlar.dart';

class SonucRoute extends StatelessWidget {
final int sonuc;
SonucRoute(this.sonuc);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TAHMİNİ YAŞAM SÜRESİ",style: YaziStili,),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Expanded(
            flex: 8,
            child: Center(child: Text(sonuc.toString()))),
          Expanded(
            flex: 1,
            child: RaisedButton(onPressed: (){
          Navigator.pop(context);
            }, 
            
            child: Text("GERİ DÖN")),
          )
        ],),
    );
  }
}