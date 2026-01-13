import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ActiveDateContainer extends StatelessWidget {
  const ActiveDateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 55,
      //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: ShapeDecoration(
        color: const Color(0xFF247CFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Center(
        child: Text(
          'Wed\n08',
          textAlign: TextAlign.center,
          style: AppStyles.styleRegular14px(context).copyWith(
            color: Colors.white,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 1.50,
          ),
        ),
      ),
    );
  }
}
