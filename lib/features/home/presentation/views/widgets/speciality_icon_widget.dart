import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SpecialityIconWidget extends StatelessWidget {
  const SpecialityIconWidget({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: Color(0xFFF4F8FF),
            borderRadius: BorderRadius.circular(56),
          ),

          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(image),
          ),
        ),
        SizedBox(height: 12),
        Text(
          text,
          style: AppStyles.styleRegular12px(
            context,
          ).copyWith(color: const Color(0xFF242424), height: 1.50),
        ),
      ],
    );
  }
}
