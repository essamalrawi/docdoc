import 'package:docdoc/features/auth/presentation/manager/cubits/otp_cubit/otp_cubit.dart';
import 'package:docdoc/features/auth/presentation/views/widgets/otp_verfication_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpVerficationView extends StatelessWidget {
  const OtpVerficationView({super.key});
  static const routeName = "otp-verfication";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OtpCubit(),
        child: OtpVerficationViewBody(),
      ),
    );
  }
}
