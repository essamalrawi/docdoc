import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomNearbyTextField extends StatelessWidget {
  const CustomNearbyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color(0xFFB3B1B0),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Search",
        hintStyle: AppStyles.styleRegular12px(context).copyWith(
          color: const Color(0xFFB3B1B0),
          fontSize: 12,
          fontWeight: FontWeight.w500,
          height: 1.50,
        ),
      ),
    );
  }
}
