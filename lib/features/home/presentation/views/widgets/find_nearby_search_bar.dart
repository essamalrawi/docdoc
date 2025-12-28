import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/features/home/presentation/views/widgets/custom_nearby_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FindNearbySearchBar extends StatelessWidget {
  const FindNearbySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(Assets.imagesIconsSearchNearby),
                SizedBox(width: 8),
                Expanded(child: CustomNearbyTextField()),
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
          child: SvgPicture.asset(Assets.imagesIconsSetting),
        ),
      ],
    );
  }
}
