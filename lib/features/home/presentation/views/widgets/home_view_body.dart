import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:docdoc/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

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

class FindNearbySection extends StatelessWidget {
  const FindNearbySection({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 343 / 168,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          image: DecorationImage(
            image: Svg(Assets.imagesFindNearbyBackgroundSection),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Book and\nschedule with nearest doctor',
                      style: AppStyles.styleRegular18px(context).copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        height: 1.60,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 10,
                      ),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48),
                        ),
                      ),

                      child: Text(
                        'Find Nearby',
                        style: AppStyles.styleRegular12px(context).copyWith(
                          color: const Color(0xFF247CFF),
                          height: 1.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(children: [Text("I love myself thank you :3")]),
          ],
        ),
      ),
    );
  }
}
