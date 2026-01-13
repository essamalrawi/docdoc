import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants/assets.dart';
import '../../../../../core/utils/app_styles.dart';

class BookAppointmentAppbar extends StatelessWidget {
  const BookAppointmentAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Spacer(),
        Text(
          'Book Appointment',
          style: AppStyles.styleRegular18px(context).copyWith(
            color: const Color(0xFF242424),
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
