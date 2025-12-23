import 'package:docdoc/core/utils/app_styles.dart';
import 'package:docdoc/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';

import 'find_nearby_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 12),
          CustomHomeAppBar(),
          SizedBox(height: 30),
          FindNearbySection(),
          SizedBox(height: 24),
          DoctorSpecialitySection(),
        ],
      ),
    );
  }
}

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
      ],
    );
  }
}
