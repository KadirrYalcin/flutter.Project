import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BenimUyg(),
  ),);
}

class BenimUyg extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("BUGÜN NE YESEM!",style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
