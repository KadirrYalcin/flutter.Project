import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BenimUygulamam(),
    ),
  );
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "BUGÜN NE YESEM!",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Yemekler(),
    );
  }
}

class Yemekler extends StatefulWidget {
  @override
  State<Yemekler> createState() => _YemeklerState();
}

class _YemeklerState extends State<Yemekler> {
  int corbaNo=1;
  int yemekNo=1;
  int tatliNo=1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed:(){
                  setState(() {
                     corbaNo=Random().nextInt(5)+1;
                  });
                 
                },
                child: Image.asset('assets/corba_$corbaNo.jpg')),
              ),
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
                child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed:(){
                 setState(() {
                    yemekNo=Random().nextInt(5)+1;
                 }); 
                },
                  child: Image.asset('assets/yemek_$yemekNo.jpg')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child:FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed:(){
                  setState(() {
                      tatliNo=Random().nextInt(5)+1;
                  });
                   
                },
                child: Image.asset('assets/tatli_$tatliNo.jpg')),
            ),
          ),
        ],
      ),
    );
  }
}
