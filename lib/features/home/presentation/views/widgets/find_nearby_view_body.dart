import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/features/home/presentation/views/widgets/find_nearby_app_bar.dart';
import 'package:flutter/material.dart';
import 'find_nearby_doctor_card.dart';
import 'find_nearby_search_bar.dart';

class FindNearbyViewBody extends StatelessWidget {
  const FindNearbyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(Assets.imagesNearbyScreenBg),
        ),
      ),
      child: Column(
        children: [
          FindNearbyAppBar(),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FindNearbySearchBar(),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            //  child: FindNearbyDoctorCard(),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FindNearbyDoctorCard(),
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
