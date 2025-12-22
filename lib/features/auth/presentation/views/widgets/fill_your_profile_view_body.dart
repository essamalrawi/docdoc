import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:docdoc/features/auth/presentation/views/otp_verfication_view.dart';
import 'package:docdoc/features/auth/presentation/views/widgets/country_text_field.dart';
import 'package:docdoc/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class FillYourProfileViewBody extends StatelessWidget {
  const FillYourProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text(
                  'Fill Your Profile',
                  style: AppStyles.styleBold24(context).copyWith(
                    color: const Color(0xFF247CFF),
                    height: 1.50,
                    letterSpacing: -0.48,
                  ),
                ),
                Text(
                  'Please take a few minutes to fill out your profile with as much detail as possible.',
                  style: AppStyles.styleRegular14px(context).copyWith(
                    color: const Color(0xFF757575),
                    height: 1.80,
                    letterSpacing: 0.20,
                  ),
                ),
                SizedBox(height: 36),
                Align(
                  alignment: AlignmentGeometry.center,
                  child: Image.asset(Assets.imagesProfilePicture, width: 120),
                ),
                SizedBox(height: 26),
                CustomTextField(hint: "Full Name"),
                SizedBox(height: 16),
                CustomTextField(hint: "Email"),
                SizedBox(height: 16),
                CustomTextField(hint: "Birthday"),
                SizedBox(height: 16),
                CountryTextField(),
                SizedBox(height: 64),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: "Submit",
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            OtpVerficationView.routeName,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
