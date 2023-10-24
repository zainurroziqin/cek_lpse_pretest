import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextWidgetPrefIcon extends StatelessWidget {
  const CustomTextWidgetPrefIcon(
      {super.key,
      required this.controller,
      required this.hint,
      required this.icon});

  final TextEditingController controller;
  final String hint;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.w)))),
    );
  }
}
