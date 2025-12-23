import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RecommendationDoctorHeader extends StatelessWidget {
  const RecommendationDoctorHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommendation Doctor',
              style: AppStyles.styleRegular18px(context).copyWith(
                color: const Color(0xFF242424),
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 1.60,
              ),
            ),
            Text(
              'See All',
              textAlign: TextAlign.right,
              style: AppStyles.styleRegular12px(
                context,
              ).copyWith(color: const Color(0xFF247CFF), height: 1.50),
            ),
          ],
        ),
      ],
    );
  }
}
