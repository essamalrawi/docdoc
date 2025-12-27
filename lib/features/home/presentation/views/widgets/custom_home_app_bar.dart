import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../notification_view.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
              style: AppStyles.styleRegular18px(context).copyWith(
                color: const Color(0xFF242424),
                fontWeight: FontWeight.w700,
                height: 1.60,
              ),
            ),

            Text(
              'How Are you Today?',
              style: AppStyles.styleRegular12px(context).copyWith(
                color: const Color(0xFF616161),
                fontSize: 11,
                height: 1.50,
              ),
            ),
          ],
        ),
        Spacer(),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, NotificationView.routeName);
          },
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(48),
            ),
            child: Center(child: SvgPicture.asset(Assets.imagesIconsBell)),
          ),
        ),
      ],
    );
  }
}
