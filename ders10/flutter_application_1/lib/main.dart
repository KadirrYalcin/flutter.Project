import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

 
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
  double screenwidth=MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(children: 
          [ Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text
        
              buildBaslik(),
        
              //BlueCart
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: bluecard(),
              ),
              SizedBox(
                height: 25,
              ),
              // CircleWidget
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Circlewidget(iconData: Icons.menu, text: "Catagories"),
                  Circlewidget(iconData: Icons.star_border, text: "favorite"),
                  Circlewidget(
                      iconData: Icons.card_travel_rounded, text: "gifts"),
                  Circlewidget(iconData: Icons.person, text: "Best selling")
                ],
              ),
        
            SizedBox(height: 30, ), 
            Center(child: Text("SALES",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),)),
        
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: [
              SalesContainer(screenWidth: screenwidth, discount: "-%50",photourl: "assets/images/smartphone12.png",text: "SmartPhones"),
              SalesContainer(screenWidth: screenwidth,discount: "-%50",photourl: "assets/images/smartphone12.png",text: "SmartPhones"),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: 
              [SalesContainer(screenWidth: screenwidth,discount: "-%50",photourl: "assets/images/smartphone12.png",text: "SmartPhones"),
            SalesContainer(screenWidth: screenwidth,discount: "-%50",photourl: "assets/images/smartphone12.png",text: "SmartPhones"),],)
          ],)
        
            ],
          ),],
        ),
      ),
    ));
  }
}

buildBaslik() {
  return Padding(
    padding: const EdgeInsets.only(top: 24),
    child: Text(
      "Home",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
    ),
  );
}

bluecard() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.blue,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "BOSE HOME SPEAKER",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text("USO 279")
          ],
        ),
        Image.asset("assets/images/boses.pn.png"),
      ],
    ),
  );
}

Circlewidget({required IconData iconData, required String text }) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: Colors.lightBlue,
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
      SizedBox(
        height: 4,
      ),
      Text(
        text,
        style: TextStyle(color: Colors.blueAccent),
      ),
    ],
  );
}


SalesContainer({required String text,required String discount,required String photourl,required double screenWidth} ){

  return Container(
      width: (screenWidth-60)/2,



    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
Container(child: Text(discount,textAlign: TextAlign.start,style: TextStyle(fontSize: 16),),color: Color.fromARGB(255, 84, 162, 225),),
SizedBox(height: 15),
Center(child: Image.asset(photourl)),
Center(child: Text(text,style: TextStyle(fontSize: 18),)),

    ],),
  );


}