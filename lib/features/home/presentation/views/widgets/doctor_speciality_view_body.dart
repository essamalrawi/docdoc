import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../domain/entities/doctor_speciality_entity.dart';
import 'doctor_speciality_app_bar.dart';
import 'package:docdoc/core/utils/app_styles.dart';

class DoctorSpecialityViewBody extends StatelessWidget {
  const DoctorSpecialityViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DoctorSpecialityAppBar(),
        ),
        SizedBox(height: 42),

        Expanded(
          child: GridView.count(
            padding: EdgeInsets.symmetric(horizontal: 32),
            crossAxisCount: 3,
            mainAxisSpacing: 32,
            children: List.generate(doctorSpecialityList.length, (index) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0x0C247CFF),
                    ),
                    child: Image.asset(
                      width: 32,
                      height: 32,
                      doctorSpecialityList[index].image,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    doctorSpecialityList[index].title,
                    style: TextStyle(
                      color: const Color(0xFF242424),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.80,
                      letterSpacing: 0.20,
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}
