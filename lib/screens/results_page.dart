import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/screens/input_page.dart';
import 'package:flutter_bmi_calculator/my_constants.dart';
import 'package:flutter_bmi_calculator/components/reusable_card.dart';
import 'package:flutter_bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(this.bmiResult, this.bmiStatus, this.bmiInterpretation);

  String bmiResult;
  String bmiStatus;
  String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Result"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Text(
                "Your Result:",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: reusableCard(
              kBodyActiveContainerColor,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        "BMI:    \n\n",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        bmiResult,
                        style: kNumberTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Status: \n\n",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        bmiStatus,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: bmiStatus == "Normal"
                                ? Colors.green[300]
                                : Colors.red),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Normal BMI Range:",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "18.5 - 25 kg/m2",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Text(
                    bmiInterpretation,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton("Re-CALCULATE", () {
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}
