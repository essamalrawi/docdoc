import 'package:docdoc/features/home/presentation/views/widgets/recommendation_doctor_view_body.dart';
import 'package:flutter/material.dart';

class RecommendationDoctorView extends StatelessWidget {
  const RecommendationDoctorView({super.key});

  static const routeName = "recommendation-doctor-view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: RecommendationDoctorViewBody()));
  }
}
