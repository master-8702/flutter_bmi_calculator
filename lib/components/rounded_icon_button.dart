import 'package:flutter/material.dart';

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
