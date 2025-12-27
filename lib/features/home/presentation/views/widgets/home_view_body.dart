import 'package:docdoc/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:docdoc/features/home/presentation/views/widgets/doctor_speciality_section.dart';
import 'package:docdoc/features/home/presentation/views/widgets/recommendation_doctor_card.dart';
import 'package:docdoc/features/home/presentation/views/widgets/recommendation_doctor_header.dart';
import 'package:flutter/material.dart';
import 'find_nearby_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 12),
                CustomHomeAppBar(),
                SizedBox(height: 30),
                FindNearbySection(),
                SizedBox(height: 24),
                DoctorSpecialitySection(),
                SizedBox(height: 22),
                RecommendationDoctorHeader(),
                SizedBox(height: 16),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: RecommendationDoctorCard(),
              );
            }, childCount: 12),
          ),
        ],
      ),
    );
  }
}
