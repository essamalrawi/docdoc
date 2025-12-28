import 'package:docdoc/features/home/presentation/views/find_nearby_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../../../../../constants/assets.dart';
import '../../../../../core/utils/app_styles.dart';

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
                      'Book and\nschedule with\nnearest doctor',
                      style: AppStyles.styleRegular18px(context).copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        height: 1.60,
                      ),
                    ),
                    SizedBox(height: 15),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, FindNearbyView.routeName);
                      },
                      child: Container(
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
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -30,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      Assets.imagesNurse,
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
