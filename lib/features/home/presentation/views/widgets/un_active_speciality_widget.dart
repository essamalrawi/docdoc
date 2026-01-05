import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class UnActiveSpecialityWidget extends StatelessWidget {
  const UnActiveSpecialityWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: ShapeDecoration(
        color: const Color(0xFFF2F4F7),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: const Color(0xFFF2F4F7)),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Text(
        text,
        style: AppStyles.styleRegular14px(context).copyWith(
          color: const Color(0xFFC2C2C2),
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.50,
        ),
      ),
    );
  }
}
