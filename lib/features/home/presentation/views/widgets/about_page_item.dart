import 'package:docdoc/core/utils/app_styles.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AboutPageItem extends StatelessWidget {
  const AboutPageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'About me',
          style: AppStyles.styleRegular16px(context).copyWith(
            color: const Color(0xFF242424),
            fontWeight: FontWeight.w600,
            height: 1.20,
          ),
        ),
        SizedBox(height: 12),
        Text(
          'Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.',
          style: AppStyles.styleRegular14px(context).copyWith(
            color: const Color(0xFF757575),
            height: 1.80,
            letterSpacing: 0.20,
          ),
        ),
        SizedBox(height: 24),
        Text(
          'Working Time',
          style: AppStyles.styleRegular16px(context).copyWith(
            color: const Color(0xFF242424),
            fontWeight: FontWeight.w600,
            height: 1.20,
          ),
        ),
        SizedBox(height: 12),
        Text(
          'Monday - Friday, 08.00 AM - 20.00 PM',
          style: AppStyles.styleRegular14px(context).copyWith(
            color: const Color(0xFF757575),
            height: 1.80,
            letterSpacing: 0.20,
          ),
        ),
        SizedBox(height: 24),
        Text(
          'STR',
          style: AppStyles.styleRegular16px(context).copyWith(
            color: const Color(0xFF242424),
            fontWeight: FontWeight.w600,
            height: 1.20,
          ),
        ),
        SizedBox(height: 12),
        Text(
          '4726482464',
          style: AppStyles.styleRegular14px(context).copyWith(
            color: const Color(0xFF757575),
            height: 1.80,
            letterSpacing: 0.20,
          ),
        ),
        SizedBox(height: 24),
        Text(
          'Pengalaman Praktik',
          style: AppStyles.styleRegular16px(context).copyWith(
            color: const Color(0xFF242424),
            fontWeight: FontWeight.w600,
            height: 1.20,
          ),
        ),
        SizedBox(height: 12),

        Text(
          'RSPAD Gatot Soebroto',
          style: AppStyles.styleRegular14px(context).copyWith(
            color: const Color(0xFF242424),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.50,
          ),
        ),
        SizedBox(height: 12),
        Text(
          '2017 - sekarang',
          style: AppStyles.styleRegular14px(context).copyWith(
            color: const Color(0xFF757575),
            height: 1.80,
            letterSpacing: 0.20,
          ),
        ),
        SizedBox(height: 33),
        CustomButton(text: 'Make An Appointment', onPressed: () {}),
      ],
    );
  }
}
