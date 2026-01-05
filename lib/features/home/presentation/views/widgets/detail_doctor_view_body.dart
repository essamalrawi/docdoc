import 'package:docdoc/features/home/presentation/views/widgets/about_page_item.dart';
import 'package:flutter/material.dart';

import 'detail_doctor_app_bar.dart';
import 'detail_doctor_card.dart';
import 'location_page_item.dart';

class DetailDoctorViewBody extends StatelessWidget {
  const DetailDoctorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: DetailDoctorAppBar(),
        ),
        SizedBox(height: 33),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: DetailDoctorCard(),
        ),
        SizedBox(height: 33),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: LocationPageItem(),
        ),
      ],
    );
  }
}
