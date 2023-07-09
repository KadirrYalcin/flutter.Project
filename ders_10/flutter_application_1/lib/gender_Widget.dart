import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes.dart';

class GenderWidget extends StatelessWidget {
  Icon genderIcon;
  String text;
  GenderWidget({required this.genderIcon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        genderIcon,
        SizedBox(height: 15.0),
        Text(text,style: labelTextStyle,),
      ],
    );
  }
}