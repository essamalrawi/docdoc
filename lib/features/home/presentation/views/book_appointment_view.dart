import 'package:docdoc/features/home/presentation/views/widgets/book_appointment_view_body.dart';
import 'package:flutter/material.dart';

class BookAppointmentView extends StatelessWidget {
  const BookAppointmentView({super.key});

  static const routeName = 'book-appointment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookAppointmentViewBody()));
  }
}
