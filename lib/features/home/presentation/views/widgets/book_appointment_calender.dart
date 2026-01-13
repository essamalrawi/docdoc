import 'package:docdoc/features/home/presentation/views/widgets/select_date_book_appoinment.dart';
import 'package:flutter/material.dart';

import 'active_date_container.dart';
import 'book_appointment_calender_app_bar.dart';

class BookAppointmentCalender extends StatelessWidget {
  const BookAppointmentCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookAppointmentCalenderAppBar(),

        SizedBox(height: 24),

        SelectDateBookAppointment(),
      ],
    );
  }
}
