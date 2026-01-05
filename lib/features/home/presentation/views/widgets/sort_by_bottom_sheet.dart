import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:docdoc/features/home/presentation/views/widgets/rating_list_widget.dart';
import 'package:docdoc/features/home/presentation/views/widgets/speciality_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SortByBottomSheet extends StatelessWidget {
  const SortByBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 8),
          SvgPicture.asset(Assets.imagesBar),
          SizedBox(height: 32),
          Text(
            'Sort By',
            textAlign: TextAlign.center,
            style: AppStyles.styleRegular18px(context).copyWith(
              color: const Color(0xFF242424),
              fontWeight: FontWeight.w600,
              height: 1.60,
            ),
          ),
          SizedBox(height: 16),
          Divider(color: const Color(0xFFECECEC), endIndent: 24, indent: 24),
          SizedBox(height: 33),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Speciality',
                  style: TextStyle(
                    color: const Color(0xFF242424),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.60,
                  ),
                ),
                SizedBox(height: 23),
                SizedBox(height: 42, child: SpecialityListWidget()),
                SizedBox(height: 23),
                Text(
                  'Rating',
                  style: TextStyle(
                    color: const Color(0xFF242424),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.60,
                  ),
                ),
                SizedBox(height: 24),
                SizedBox(height: 42, child: RatingListWidget()),
                SizedBox(height: 32),
                CustomButton(
                  text: "Done",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 23),
        ],
      ),
    );
  }
}
