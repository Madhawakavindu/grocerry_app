import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final double buttonHeight;
  final double buttonWidth;
  final Color topColor;
  final Color bottomColor;
  final String buttonTitle;
  const GradientButton({
    super.key,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.topColor,
    required this.bottomColor, 
    required this.buttonTitle,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonHeight,
      height: buttonWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [topColor, bottomColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
         buttonTitle,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
