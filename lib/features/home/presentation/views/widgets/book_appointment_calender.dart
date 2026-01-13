import 'package:flutter/material.dart';

import 'book_appointment_calender_app_bar.dart';

class BookAppointmentCalender extends StatelessWidget {
  const BookAppointmentCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [BookAppointmentCalenderAppBar()]);
  }
}
