import 'package:docdoc/features/home/presentation/views/widgets/about_page_item.dart';
import 'package:docdoc/features/home/presentation/views/widgets/location_page_item.dart';
import 'package:docdoc/features/home/presentation/views/widgets/review_page_item.dart';
import 'package:flutter/material.dart';

class DetailDoctorPageView extends StatelessWidget {
  const DetailDoctorPageView({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });

  final PageController pageController;
  final ValueChanged<int> onPageChanged;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: onPageChanged,
      children: const [AboutPageItem(), LocationPageItem(), ReviewPageItem()],
    );
  }
}
