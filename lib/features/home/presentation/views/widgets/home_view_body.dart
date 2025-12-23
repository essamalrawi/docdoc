import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:docdoc/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

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
        ],
      ),
    );
  }
}
