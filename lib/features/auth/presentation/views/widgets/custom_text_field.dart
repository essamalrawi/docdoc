import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextField(
        decoration: InputDecoration(
          hintStyle: AppStyles.styleRegular14px(context).copyWith(
            color: const Color(0xFFC2C2C2),
            fontWeight: FontWeight.w500,
            height: 1.50,
          ),
          border: outlineInputBorder(),
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          hintText: hint,
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: const Color(0xFFECECEC)),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
