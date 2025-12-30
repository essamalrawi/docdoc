import 'package:docdoc/features/home/presentation/views/widgets/recommendation_doctor_app_bar.dart';
import 'package:docdoc/features/home/presentation/views/widgets/recommendation_doctor_card.dart';
import 'package:docdoc/features/home/presentation/views/widgets/recommendation_doctor_search_bar.dart';
import 'package:flutter/material.dart';

class RecommendationDoctorViewBody extends StatelessWidget {
  const RecommendationDoctorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    RecommendationDoctorAppBar(),
                    SizedBox(height: 32),
                    RecommendationDoctorSearchBar(),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
              child: RecommendationDoctorCard(),
            );
          }, childCount: 12),
        ),
      ],
    );
  }
}
