import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/features/home/presentation/views/widgets/custom_recommendation_doctor_text_field.dart';
import 'package:docdoc/features/home/presentation/views/widgets/sort_by_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecommendationDoctorSearchBar extends StatelessWidget {
  const RecommendationDoctorSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: ShapeDecoration(
              color: Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(Assets.imagesIconsSearchNearby),
                SizedBox(width: 8),
                Expanded(child: CustomRecommendationDoctorTextField()),
              ],
            ),
          ),
        ),
        SizedBox(width: 8),
        Container(
          padding: EdgeInsets.all(11),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SortByBottomSheet();
                },
              );
            },
            child: SvgPicture.asset(Assets.imagesIconsSort),
          ),
        ),
      ],
    );
  }
}
