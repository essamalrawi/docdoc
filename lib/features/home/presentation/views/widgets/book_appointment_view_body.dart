import 'package:docdoc/features/home/presentation/views/widgets/book_appointment_appbar.dart';
import 'package:flutter/material.dart';
import 'appointment_state_widget.dart';

class BookAppointmentViewBody extends StatelessWidget {
  const BookAppointmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BookAppointmentAppbar(),
        ),
        SizedBox(height: 32),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 46),
          child: AppointmentStateWidget(),
        ),
      ],
    );
  }
}
