import 'dart:ui';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'my_constants.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kBodyInactiveContainerColor;
  Color femaleCardColor = kBodyInactiveContainerColor;
  int height = 150;
  int weight = 50;
  int age = 25;

  void changeContainerActiveColor(kGender selectedGender) {
    maleCardColor = selectedGender == kGender.male
        ? kBodyActiveContainerColor
        : kBodyInactiveContainerColor;
    femaleCardColor = selectedGender == kGender.female
        ? kBodyActiveContainerColor
        : kBodyInactiveContainerColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI Calculator"),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: reusableCard(
                        maleCardColor,
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              changeContainerActiveColor(kGender.male);
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.person,
                                size: 20,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("MALE", style: kLableStyle),
                            ],
                          ),
                        )),
                  ),
                  Expanded(
                    child: reusableCard(
                        femaleCardColor,
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              changeContainerActiveColor(kGender.female);
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.personDress,
                                size: 20,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("FEMALE", style: kLableStyle),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: reusableCard(
                  kBodyActiveContainerColor,
                  reusableCard(
                      kBodyActiveContainerColor,
                      Column(
                        children: [
                          const Text(
                            "Height",
                            style: kLableStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: kNumberTextStyle,
                              ),
                              Text(
                                "cm",
                                style: kLableStyle,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 10.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 20.0)),
                            child: Slider(
                              value: height.toDouble(),
                              min: 100,
                              max: 220,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.toInt();
                                });
                              },
                            ),
                          )
                        ],
                      ))),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: reusableCard(
                        kBodyActiveContainerColor,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: kLableStyle,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundedIconButton(FontAwesomeIcons.minus, () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                                SizedBox(
                                  width: 15,
                                ),
                                RoundedIconButton(FontAwesomeIcons.plus, () {
                                  setState(() {
                                    weight++;
                                  });
                                })
                              ],
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    child: reusableCard(
                        kBodyActiveContainerColor,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: kLableStyle,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundedIconButton(FontAwesomeIcons.minus, () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                                SizedBox(
                                  width: 15,
                                ),
                                RoundedIconButton(FontAwesomeIcons.plus, () {
                                  setState(() {
                                    age++;
                                  });
                                })
                              ],
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Container(
              height: kBottomContainerHeight,
              width: double.infinity,
              // margin: EdgeInsets.only(top: 6),
              decoration: const BoxDecoration(
                  color: kBottomContainerColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
            ),
          ],
        ));
  }

  Container reusableCard(Color newColor, Widget childWidget) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: newColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: childWidget,
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton(this.icon, this.onPressed);

  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 7.0,
      constraints: const BoxConstraints.tightFor(width: 50.0, height: 50.0),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
    );
  }
}
