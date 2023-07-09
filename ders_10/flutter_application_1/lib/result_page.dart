import 'package:flutter/material.dart';
import 'package:flutter_application_1/Card.dart';
import 'package:flutter_application_1/calculate.dart';
import 'package:flutter_application_1/themes.dart';

class ResultPage extends StatelessWidget {
  Calculate calc;
  ResultPage({required this.calc});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Expanded(child: cards(
             colour: activeCardColour, 
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text(calc.result(),style: TextStyle(fontSize: 25,color: Colors.lightGreenAccent)),
              Text(calc.bMI(),style: TextStyle(fontSize: 70),),
              Text(calc.advice(),style: TextStyle(fontSize: 20),),


            ],),
          )),
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
                height: bottomContainerHeight,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                child: const Center(
                    child: Text(
                  "RE-CALCULATE",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ),
        ),
        ],
      ),
    );
  }
}
