import 'package:docdoc/features/auth/presentation/views/widgets/fill_your_profile_view_body.dart';
import 'package:flutter/material.dart';

class FillYourProfileView extends StatelessWidget {
  const FillYourProfileView({super.key});
  static const routeName = "fill-profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FillYourProfileViewBody());
  }
}
