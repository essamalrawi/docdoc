import 'package:docdoc/core/utils/app_styles.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/assets.dart';

class LocationPageItem extends StatelessWidget {
  const LocationPageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Practice Place',
          style: AppStyles.styleRegular16px(context).copyWith(
            color: const Color(0xFF242424),
            fontWeight: FontWeight.w600,
            height: 1.20,
          ),
        ),
        SizedBox(height: 12),
        Text(
          'Cairo, Egypt',
          style: AppStyles.styleRegular14px(context).copyWith(
            color: const Color(0xFF757575),
            height: 1.80,
            letterSpacing: 0.20,
          ),
        ),
        SizedBox(height: 18),
        Text(
          'Location Map',
          style: TextStyle(
            color: const Color(0xFF242424),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 1.20,
          ),
        ),
        SizedBox(height: 12),
        Image.asset(Assets.imagesMap),
      ],
    );
  }
}
