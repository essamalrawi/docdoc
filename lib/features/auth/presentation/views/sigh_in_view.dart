import 'package:docdoc/features/auth/presentation/views/widgets/sign_in_view_body.dart';
import 'package:flutter/material.dart';

class SighInView extends StatelessWidget {
  const SighInView({super.key});
  static const routeName = "sign-in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SignInViewBody());
  }
}
