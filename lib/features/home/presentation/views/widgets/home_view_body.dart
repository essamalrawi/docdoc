import 'package:docdoc/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:docdoc/features/home/presentation/views/widgets/doctor_speciality_section.dart';
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
