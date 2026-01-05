import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../constants/assets.dart';
import '../../../../../core/utils/app_styles.dart';

class UnActiveStarWidget extends StatelessWidget {
  const UnActiveStarWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: ShapeDecoration(
        color: const Color(0xFFF2F4F7),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: const Color(0xFFF2F4F7)),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesGreyStar),
          SizedBox(width: 6),
          Text(
            text,
            style: AppStyles.styleRegular14px(context).copyWith(
              color: const Color(0xFFC2C2C2),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
        ],
      ),
    );
  }
}
