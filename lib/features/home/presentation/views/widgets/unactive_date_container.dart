import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class UnactiveDateContainer extends StatelessWidget {
  const UnactiveDateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 48,
      decoration: ShapeDecoration(
        color: const Color(0xFFF2F4F7),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.78, color: const Color(0xFFF2F4F7)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Center(
        child: Text(
          'Thu\n09',
          textAlign: TextAlign.center,
          style: AppStyles.styleRegular12px(context).copyWith(
            color: const Color(0xFFC2C2C2),
            fontSize: 12,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.60,
          ),
        ),
      ),
    );
  }
}
