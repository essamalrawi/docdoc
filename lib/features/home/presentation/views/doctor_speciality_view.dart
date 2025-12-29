import 'package:docdoc/features/home/presentation/views/widgets/doctor_speciality_view_body.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityView extends StatelessWidget {
  const DoctorSpecialityView({super.key});

  static const routeName = "doctor-speciality";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: DoctorSpecialityViewBody()));
  }
}
