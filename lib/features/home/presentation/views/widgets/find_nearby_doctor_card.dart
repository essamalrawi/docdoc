import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FindNearbyDoctorCard extends StatelessWidget {
  const FindNearbyDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Row(
        children: [
          Image.asset(height: 73, width: 73, Assets.imagesPerson),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Randy Wigham',
                style: AppStyles.styleRegular16px(context).copyWith(
                  color: const Color(0xFF242424),
                  fontWeight: FontWeight.w700,
                  height: 1.20,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'General | RSUD Gatot Subroto',
                style: AppStyles.styleRegular12px(context).copyWith(
                  color: const Color(0xFF616161),
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
                      color: const Color(0xFF616161),
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
      ),
    );
  }
}
