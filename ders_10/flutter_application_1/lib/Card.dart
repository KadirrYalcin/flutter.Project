import 'package:flutter/material.dart';

class cards extends StatelessWidget {
  Color colour;
  Widget cardChild;
  cards({required this.colour, required this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: cardChild,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: colour),
      ),
    );
  }
}
