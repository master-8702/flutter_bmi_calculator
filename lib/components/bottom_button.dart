import 'dart:developer';

import 'package:flutter/material.dart';
import '../my_constants.dart';
import '../screens/input_page.dart';

class BottomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTapFunction;

  BottomButton(this.buttonText, this.onTapFunction);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      // () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) {
      //       return InputPage();
      //     }),
      //   );
      // },
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
        // margin: EdgeInsets.only(top: 6),
        decoration: const BoxDecoration(
            color: kBottomContainerColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
      ),
    );
  }
}
