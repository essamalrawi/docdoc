import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FindNearbyAppBar extends StatelessWidget {
  const FindNearbyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(171, 255, 255, 255),
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesIconsArrow),
          Spacer(),
          Text(
            'Find Nearby',
            style: AppStyles.styleRegular18px(context).copyWith(
              color: const Color(0xFF121212),
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
