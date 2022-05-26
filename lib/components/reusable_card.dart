import 'package:flutter/material.dart';

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
