import 'package:docdoc/core/utils/app_styles.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:docdoc/features/auth/presentation/views/face_id_view.dart';
import 'package:docdoc/features/auth/presentation/views/widgets/otp_form.dart';
import 'package:flutter/material.dart';

class OtpVerficationViewBody extends StatelessWidget {
  const OtpVerficationViewBody({super.key});

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
                        'OTP Verification',
                        style: AppStyles.styleBold24(context).copyWith(
                          color: const Color(0xFF247CFF),
                          height: 1.50,
                          letterSpacing: -0.48,
                        ),
                      ),
                      Text(
                        'Add a PIN number to make your account more secure and easy to sign in.',
                        style: AppStyles.styleRegular14px(context).copyWith(
                          color: const Color(0xFF757575),
                          height: 1.80,
                          letterSpacing: 0.20,
                        ),
                      ),
                      SizedBox(height: 64),

                      OtpForm(),
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
                    Navigator.pushNamed(context, FaceIdView.routeName);
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
