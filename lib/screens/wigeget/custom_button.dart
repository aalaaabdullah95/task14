import 'package:flutter/material.dart';

class Custom_button extends StatelessWidget {
  const Custom_button(
      {super.key,
      this.onTap,
      required this.width,
      required this.heigh,
      required this.text,
      required this.backGroundColor,
      required this.textColor});
  final void Function()? onTap;
  final double width;
  final double heigh;
  final String text;
  final Color backGroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: heigh,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backGroundColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
