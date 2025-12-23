import 'package:docdoc/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecommendationDoctorCard extends StatelessWidget {
  const RecommendationDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Image.asset(Assets.imagesPerson),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dr. Randy Wigham',
              style: TextStyle(
                color: const Color(0xFF242424),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 1.20,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'General | RSUD Gatot Subroto',
              style: TextStyle(
                color: const Color(0xFF757575),
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.20,
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                SvgPicture.asset(Assets.imagesIconsStar),
                Text(
                  '4.8 (4,279 reviews)',
                  style: TextStyle(
                    color: const Color(0xFF757575),
                    fontSize: 12,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
