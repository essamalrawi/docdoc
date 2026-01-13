import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'container_status_color_widget.dart';

class ContainerStatusWidget extends StatelessWidget {
  const ContainerStatusWidget({
    super.key,
    required this.statusColorWidget,
    required this.fontColor,
    required this.text,
    required this.number,
  });

  final Color statusColorWidget;
  final Color fontColor;
  final String text;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerStatusColorWidget(
          number: number,
          containerColor: statusColorWidget,
        ),
        SizedBox(height: 6),
        Text(
          text,
          style: AppStyles.styleRegular12px(context).copyWith(
            color: fontColor,
            fontSize: 10,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 1.50,
          ),
        ),
      ],
    );
  }
}
