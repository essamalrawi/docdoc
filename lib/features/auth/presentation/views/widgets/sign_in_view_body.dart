import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:docdoc/features/auth/presentation/views/sign_up_view.dart';
import 'package:docdoc/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:docdoc/features/auth/presentation/views/widgets/custom_sign_in_container_icon.dart';
import 'package:docdoc/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  final ValueNotifier<bool> _boolNotifier = ValueNotifier(false);
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
                  'Welcome Back',
                  style: AppStyles.styleBold24(context).copyWith(
                    color: const Color(0xFF247CFF),
                    height: 1.50,
                    letterSpacing: -0.48,
                  ),
                ),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: AppStyles.styleRegular14px(context).copyWith(
                    color: const Color(0xFF757575),
                    height: 1.80,
                    letterSpacing: 0.20,
                  ),
                ),
                SizedBox(height: 36),
                CustomTextField(hint: "Email"),
                SizedBox(height: 16),
                CustomTextField(hint: "Password"),
                SizedBox(height: 16),
                Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: CustomCheckBox(
                            isChecked: _boolNotifier,
                            onChecked: (value) {
                              _boolNotifier.value = !_boolNotifier.value;
                            },
                          ),
                        ),

                        Text(
                          "Remember me",
                          style: AppStyles.styleRegular12px(context).copyWith(
                            color: const Color(0xFF9E9E9E),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "Forgot Password",
                      style: AppStyles.styleRegular12px(
                        context,
                      ).copyWith(color: const Color(0xFF247CFF), height: 1.50),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(text: "Login", onPressed: () {}),
                    ),
                  ],
                ),
                SizedBox(height: 46),

                Row(
                  children: [
                    Expanded(
                      child: Divider(color: Color(0xFFE0E0E0), thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        'Or sign in with',
                        textAlign: TextAlign.center,
                        style: AppStyles.styleRegular12px(context).copyWith(
                          color: const Color(0xFF9E9E9E),
                          height: 1.50,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: Color(0xFFE0E0E0), thickness: 1),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSignInContainerIcon(
                      widget: SvgPicture.asset(Assets.imagesGoogleLogo),
                    ),
                    SizedBox(width: 32),
                    CustomSignInContainerIcon(
                      widget: SvgPicture.asset(Assets.imagesFacebookLogo),
                    ),
                    SizedBox(width: 32),
                    CustomSignInContainerIcon(
                      widget: SvgPicture.asset(Assets.imagesAppleLogo),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'By logging, you agree to our ',
                              style: AppStyles.styleRegular12px(context)
                                  .copyWith(
                                    color: const Color(0xFF9E9E9E),
                                    fontSize: 11,
                                    height: 1.50,
                                  ),
                            ),

                            TextSpan(
                              text: 'Terms & Conditions ',
                              style: AppStyles.styleRegular12px(context)
                                  .copyWith(
                                    color: const Color(0xFF242424),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    height: 1.60,
                                  ),
                            ),
                            TextSpan(
                              text: 'and ',
                              style: AppStyles.styleRegular12px(context)
                                  .copyWith(
                                    color: const Color(0xFF9E9E9E),
                                    fontSize: 11,
                                    height: 1.50,
                                  ),
                            ),

                            TextSpan(
                              text: 'PrivacyPolicy.',
                              style: AppStyles.styleRegular12px(context)
                                  .copyWith(
                                    color: const Color(0xFF242424),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    height: 1.60,
                                  ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account yet? ',
                            style: AppStyles.styleRegular12px(context).copyWith(
                              color: const Color(0xFF242424),
                              fontSize: 11,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(
                                  context,
                                  SignUpView.routeName,
                                );
                              },
                            text: 'Sign Up ',
                            style: AppStyles.styleRegular12px(context).copyWith(
                              color: const Color(0xFF247CFF),
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.end,
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
