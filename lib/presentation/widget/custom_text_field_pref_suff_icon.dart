import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextWidgetPrefSuffIcon extends StatelessWidget {
  const CustomTextWidgetPrefSuffIcon(
      {super.key,
      required this.controller,
      required this.hint,
      required this.iconPreff,
      required this.iconSuff,
      required this.onTap, this.obsecureText});

  final TextEditingController controller;
  final String hint;
  final Icon iconPreff;
  final Icon iconSuff;
  final VoidCallback onTap;
  final bool? obsecureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecureText??false,
      decoration: InputDecoration(
          prefixIcon: iconPreff,
          suffixIcon: GestureDetector(
            onTap: onTap,
            child: iconSuff,
          ),
          hintText: hint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.w)))),
    );
  }
}