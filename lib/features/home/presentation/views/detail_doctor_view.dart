import 'package:docdoc/features/home/presentation/views/widgets/detail_doctor_view_body.dart';
import 'package:flutter/material.dart';

class DetailDoctorView extends StatelessWidget {
  const DetailDoctorView({super.key});

  static const routeName = "detail-doctor";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: DetailDoctorViewBody()));
  }
}
