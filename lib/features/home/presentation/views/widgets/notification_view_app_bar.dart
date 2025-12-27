import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationViewAppBar extends StatelessWidget {
  const NotificationViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: const Color(0xFFECECEC)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Center(child: SvgPicture.asset(Assets.imagesIconsArrow)),
          ),
        ),
        Text(
          'Notification',
          style: AppStyles.styleRegular18px(context).copyWith(
            color: const Color(0xFF242424),
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: ShapeDecoration(
            color: const Color(0xFF247CFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          child: Text(
            '2 NEW',
            textAlign: TextAlign.right,
            style: AppStyles.styleRegular12px(context).copyWith(
              color: Colors.white,
              fontSize: 8,
              fontWeight: FontWeight.w500,
              height: 1.60,
            ),
          ),
        ),
      ],
    );
  }
}
