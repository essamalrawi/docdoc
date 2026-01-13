import 'package:docdoc/features/home/presentation/views/widgets/unactive_date_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/assets.dart';
import 'active_date_container.dart';

class SelectDateBookAppointment extends StatefulWidget {
  const SelectDateBookAppointment({super.key});

  @override
  State<SelectDateBookAppointment> createState() =>
      _SelectDateBookAppointmentState();
}

class _SelectDateBookAppointmentState extends State<SelectDateBookAppointment> {
  final ScrollController _controller = ScrollController();

  void scrollDown() {
    _controller.animateTo(
      _controller.offset + 300,
      duration: Duration(milliseconds: 400),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.imagesLeftArrow),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: SizedBox(
              height: 62,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ActiveDateContainer(),
                  );
                },
              ),
            ),
          ),
        ),
        // UnactiveDateContainer(),
        SvgPicture.asset(Assets.imagesRightArrow),
      ],
    );
  }
}
