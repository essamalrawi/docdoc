import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class NotificationAlert extends StatelessWidget {
  const NotificationAlert({
    super.key,
    required this.day,
    required this.showMarkAllAsRead,
  });

  final String day;
  final bool showMarkAllAsRead;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          day,
          style: AppStyles.styleRegular12px(context).copyWith(
            color: const Color(0xFF9E9E9E),
            fontSize: 12,
            fontWeight: FontWeight.w500,
            height: 1.60,
          ),
        ),
        showMarkAllAsRead
            ? Text(
                'Mark all as read',
                textAlign: TextAlign.right,
                style: AppStyles.styleRegular12px(
                  context,
                ).copyWith(color: const Color(0xFF247CFF), height: 1.50),
              )
            : SizedBox(),
      ],
    );
  }
}
