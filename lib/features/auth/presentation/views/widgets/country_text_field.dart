import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountryTextField extends StatelessWidget {
  const CountryTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: ShapeDecoration(
        color: const Color(0xFFFDFDFF),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0xFFECECEC)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      child: Row(
        children: [
          SizedBox(width: 13),
          Image.asset(Assets.imagesFlag),
          SizedBox(width: 8),
          SvgPicture.asset(Assets.imagesArrowDown),
          VerticalDivider(color: Color(0xFFE5E7EB), endIndent: 15, indent: 15),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintStyle: AppStyles.styleRegular14px(context).copyWith(
                  color: const Color(0xFFC2C2C2),
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
                border: outlineInputBorder(),
                enabledBorder: outlineInputBorder(),
                focusedBorder: outlineInputBorder(),
                hintText: "Your number",
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(borderSide: BorderSide.none);
  }
}
