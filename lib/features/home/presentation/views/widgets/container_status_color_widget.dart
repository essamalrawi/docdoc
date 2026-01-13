import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class ContainerStatusColorWidget extends StatelessWidget {
  const ContainerStatusColorWidget({
    super.key,
    required this.containerColor,
    required this.number,
  });

  final Color containerColor;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: ShapeDecoration(
        shape: const CircleBorder(),
        color: containerColor,
      ),
      child: Center(
        child: Text(
          number,
          style: AppStyles.styleRegular12px(context).copyWith(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.60,
          ),
        ),
      ),
    );
  }
}
