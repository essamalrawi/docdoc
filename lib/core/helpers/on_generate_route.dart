import 'package:docdoc/features/auth/presentation/views/sigh_in_view.dart';
import 'package:docdoc/features/auth/presentation/views/sign_up_view.dart';
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

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
