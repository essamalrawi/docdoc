import 'dart:ffi';

import 'package:docdoc/core/utils/app_styles.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:docdoc/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

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
                        'Forgot Password',
                        style: AppStyles.styleBold24(context).copyWith(
                          color: const Color(0xFF247CFF),
                          height: 1.50,
                          letterSpacing: -0.48,
                        ),
                      ),
                      Text(
                        'At our app, we take the security of your information seriously.',
                        style: AppStyles.styleRegular14px(context).copyWith(
                          color: const Color(0xFF757575),
                          height: 1.80,
                          letterSpacing: 0.20,
                        ),
                      ),
                      SizedBox(height: 32),
                      CustomTextField(hint: "Email or Phone Number"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: CustomButton(text: "Reset Password", onPressed: () {}),
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
