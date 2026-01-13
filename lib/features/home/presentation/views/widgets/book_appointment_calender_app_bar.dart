import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class BookAppointmentCalenderAppBar extends StatelessWidget {
  const BookAppointmentCalenderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Select Date',
          style: AppStyles.styleRegular16px(context).copyWith(
            color: const Color(0xFF242424),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 1.50,
          ),
        ),

        Text(
          'Set Manual',
          textAlign: TextAlign.right,
          style: AppStyles.styleRegular12px(context).copyWith(
            color: Color(0xFF247CFF),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.60,
          ),
        ),
      ],
    );
  }
}
