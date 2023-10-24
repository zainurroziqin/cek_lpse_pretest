import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;

  const CustomButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.backgroundColor,
      this.borderColor,
      this.textColor,
      required this.width,
      required this.height});

  final String text;
  final Color backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(20.w)),
            border: Border.all(color: borderColor ?? backgroundColor)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
