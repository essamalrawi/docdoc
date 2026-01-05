import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class ActiveSpecialityWidget extends StatelessWidget {
  const ActiveSpecialityWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: ShapeDecoration(
        color: const Color(0xFF247CFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      child: Text(
        text,
        style: AppStyles.styleRegular14px(context).copyWith(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.50,
        ),
      ),
    );
  }
}
