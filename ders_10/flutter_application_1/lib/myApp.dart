import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculate.dart';
import 'package:flutter_application_1/result_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Card.dart';
import 'gender_Widget.dart';
import 'themes.dart';
import 'result_page.dart';

int heightCm = 160;
int weight = 60;
int age = 20;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color maleButtonColour = inactiveCardColour;
  Color femaleButtonColor = inactiveCardColour;
  void updateGenderCard(int gender) {
    if (gender == 1) {
      maleButtonColour = activeCardColour;
      femaleButtonColor = inactiveCardColour;
    } else if (gender == 2) {
      femaleButtonColor = activeCardColour;
      maleButtonColour = inactiveCardColour;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateGenderCard(1);
                      });
                    },
                    child: cards(
                      colour: maleButtonColour,
                      cardChild: GenderWidget(
                        genderIcon: const Icon(
                          FontAwesomeIcons.mars,
                          size: genderIconsSize,
                        ),
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateGenderCard(2);
                      });
                    },
                    child: cards(
                      colour: femaleButtonColor,
                      cardChild: GenderWidget(
                        genderIcon: const Icon(
                          FontAwesomeIcons.venus,
                          size: genderIconsSize,
                        ),
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: cards(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        heightCm.toString(),
                        style: numberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Colors.red,
                        overlayColor: Color(0x25EB1555)),
                    child: Slider(
                        value: heightCm.toDouble(),
                        max: 230,
                        min: 120,
                        onChanged: (double index) {
                          setState(() {
                            heightCm = index.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: cards(
                    colour: activeCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEİGHT",
                          style: labelTextStyle,
                        ),
                        SizedBox(height: 8),
                        Text(
                          weight.toString(),
                          style: numberTextStyle,
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: 'bnt10',
                                backgroundColor: Colors.grey,
                                child: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                            SizedBox(
                              width: 12,
                            ),
                            FloatingActionButton(
                              heroTag: 'bnt11',
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: cards(
                    colour: activeCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: labelTextStyle,
                        ),
                        SizedBox(height: 8),
                        Text(
                          age.toString(),
                          style: numberTextStyle,
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: 'bnt12',
                                backgroundColor: Colors.grey,
                                child: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(
                              width: 12,
                            ),
                            FloatingActionButton(
                              heroTag: 'bnt13',
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Calculate calc =Calculate(height: heightCm.toDouble(),weight: weight);
              
              Navigator
                  .push(context, MaterialPageRoute(builder: (context) => ResultPage(calc: calc,),));
            },
            child: Container(
              width: double.infinity,
              height: bottomContainerHeight,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.red),
              child: const Center(
                  child: Text(
                "CALCULATE",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ),
          )
        ],
      ),
    );
  }
}
