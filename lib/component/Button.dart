import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color Colors;
  final Color textColors;
  final double width;
  final double height;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.Colors,
    required this.textColors,
    required this.width,
    required this.height
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: height, horizontal: width),
        decoration: BoxDecoration(
          color: Colors,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColors,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}