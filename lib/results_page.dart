import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/input_page.dart';
import 'package:flutter_bmi_calculator/my_constants.dart';
import 'reusable_card.dart';
import 'components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

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
                        "20.3",
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
                        "Normal",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[300]),
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
                        "18.8 - 25 kg/m2",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Text(
                    "You Have a Normal Body Weight.\n  Good Job!",
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton("Re-CALCULATE",(){
            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return InputPage();
                    }),
                  );

          }),
        ],
      ),
    );
  }
}
