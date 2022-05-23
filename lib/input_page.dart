import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: bmiContainer(),
                  ),
                  Expanded(
                    child: bmiContainer(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: bmiContainer(),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: bmiContainer(),
                  ),
                  Expanded(
                    child: bmiContainer(),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Container bmiContainer() {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
