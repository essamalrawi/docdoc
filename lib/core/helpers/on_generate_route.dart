import 'package:docdoc/features/auth/presentation/views/face_id_view.dart';
import 'package:docdoc/features/auth/presentation/views/fill_your_profile_view.dart';
import 'package:docdoc/features/auth/presentation/views/forget_password_view.dart';
import 'package:docdoc/features/auth/presentation/views/otp_verfication_view.dart';
import 'package:docdoc/features/auth/presentation/views/sigh_in_view.dart';
import 'package:docdoc/features/auth/presentation/views/sign_up_view.dart';
import 'package:docdoc/features/home/presentation/views/home_view.dart';
import 'package:docdoc/features/on_boarding/presentation/views/widgets/on_boarding_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingView.routeName:
      return CupertinoPageRoute(builder: (context) => OnBoardingView());
    case SighInView.routeName:
      return CupertinoPageRoute(builder: (context) => SighInView());
    case SignUpView.routeName:
      return CupertinoPageRoute(builder: (context) => SignUpView());
    case ForgetPasswordView.routeName:
      return CupertinoPageRoute(builder: (context) => ForgetPasswordView());
    case FillYourProfileView.routeName:
      return CupertinoPageRoute(builder: (context) => FillYourProfileView());
    case OtpVerficationView.routeName:
      return CupertinoPageRoute(builder: (context) => OtpVerficationView());
    case FaceIdView.routeName:
      return CupertinoPageRoute(builder: (context) => FaceIdView());
    case HomeView.routeName:
      return CupertinoPageRoute(builder: (context) => HomeView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
