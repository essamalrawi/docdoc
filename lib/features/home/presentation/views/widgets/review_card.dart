import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants/assets.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
    required this.image,
    required this.name,
    required this.review,
    required this.starsCount,
  });

  final String image, name, review;
  final int starsCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(
                image,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: AppStyles.styleRegular16px(context).copyWith(
                          color: const Color(0xFF242424),
                          fontWeight: FontWeight.w600,
                          height: 1.50,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Today',
                        style: AppStyles.styleRegular12px(context).copyWith(
                          color: const Color(0xFF9E9E9E),
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: List.generate(starsCount, (index) {
                      return SvgPicture.asset(
                        width: 23.07,
                        height: 23.07,
                        Assets.imagesIconsStar,
                      );
                    }),
                  ),
                  SizedBox(height: 10),
                  Text(
                    review,
                    style: AppStyles.styleRegular12px(context).copyWith(
                      color: const Color(0xFF757575),
                      height: 1.60,
                      letterSpacing: 0.20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
