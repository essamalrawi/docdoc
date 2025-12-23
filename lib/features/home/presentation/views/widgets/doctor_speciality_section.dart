import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'speciality_icon_widget.dart';

class DoctorSpecialitySection extends StatelessWidget {
  const DoctorSpecialitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Doctor Speciality',
              style: AppStyles.styleRegular18px(context).copyWith(
                color: const Color(0xFF242424),
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 1.60,
              ),
            ),
            Text(
              'See All',
              textAlign: TextAlign.right,
              style: AppStyles.styleRegular12px(
                context,
              ).copyWith(color: const Color(0xFF247CFF), height: 1.50),
            ),
          ],
        ),
        SizedBox(height: 16),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SpecialityIconWidget(
                image: Assets.imagesIconsDoctor,
                text: "General",
              ),
              SpecialityIconWidget(
                image: Assets.imagesIconsBrain,
                text: "Neurologic",
              ),
              SpecialityIconWidget(
                image: Assets.imagesIconsBabe,
                text: "Pediatric",
              ),
              SpecialityIconWidget(
                image: Assets.imagesIconsKidneys,
                text: "Radiology",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
