import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.borderRadius,
      required this.text,
      required this.onPressed,
      required this.backgroundColor,
      this.fontSize,
      required this.textColor});

  final BorderRadiusGeometry? borderRadius;
  final String text;
  final Color textColor;
  final void Function() onPressed;
  final Color backgroundColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: MaterialButton(
        onPressed: onPressed,
        color: backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12)),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: fontSize,
              color: textColor),
        ),
      ),
    );
  }
}
