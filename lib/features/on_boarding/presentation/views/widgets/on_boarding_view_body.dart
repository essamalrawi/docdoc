import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/features/auth/presentation/views/sigh_in_view.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 40),
        SvgPicture.asset(Assets.imagesDocdocLogo),
        SizedBox(height: 40),
        Image.asset(Assets.imagesOnBoardingPic),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: CustomButton(
            text: "Get Started",
            onPressed: () {
              Navigator.pushNamed(context, SighInView.routeName);
            },
          ),
        ),
        SizedBox(height: 32),
      ],
    );
  }
}
