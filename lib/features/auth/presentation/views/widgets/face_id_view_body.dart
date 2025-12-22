import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FaceIdViewBody extends StatelessWidget {
  const FaceIdViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        'Face ID',
                        style: AppStyles.styleBold24(context).copyWith(
                          color: const Color(0xFF247CFF),
                          height: 1.50,
                          letterSpacing: -0.48,
                        ),
                      ),
                      Text(
                        'Add a Face ID to make your account more secure and easy to sign in.',
                        style: AppStyles.styleRegular14px(context).copyWith(
                          color: const Color(0xFF757575),
                          height: 1.80,
                          letterSpacing: 0.20,
                        ),
                      ),
                      SizedBox(height: 64),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [SvgPicture.asset(Assets.imagesFaceId)],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: "Submit",
                  onPressed: () {
                    // Navigator.pushNamed(context, FaceIdView.routeName);
                  },
                ),
              ),
              SizedBox(height: 32),
            ],
          ),
        ],
      ),
    );
  }
}
