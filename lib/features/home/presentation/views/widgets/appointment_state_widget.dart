import 'package:docdoc/features/home/presentation/views/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'container_status_widget.dart';

class AppointmentStateWidget extends StatelessWidget {
  const AppointmentStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ContainerStatusWidget(
          number: "1",
          text: 'Date & Time',
          statusColorWidget: Color(0xFF247CFF),
          fontColor: Colors.black,
        ),
        CustomDivider(),
        ContainerStatusWidget(
          number: "2",
          text: 'Payment',
          statusColorWidget: Color(0xFFE0E0E0),
          fontColor: Color(0xFF9E9E9E),
        ),
        CustomDivider(),
        ContainerStatusWidget(
          number: "3",
          text: 'Summary',
          statusColorWidget: Color(0xFFE0E0E0),
          fontColor: Color(0xFF9E9E9E),
        ),
      ],
    );
  }
}
