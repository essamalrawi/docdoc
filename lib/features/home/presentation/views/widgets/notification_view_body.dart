import 'package:docdoc/constants/assets.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'notification_alert.dart';
import 'notification_view_app_bar.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: NotificationViewAppBar(),
        ),
        SizedBox(height: 33),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: NotificationAlert(day: "Today", showMarkAllAsRead: true),
        ),
        SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ReadNotification(),
        ),
        SizedBox(height: 24),
        UnReadNotification(),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: NotificationAlert(day: "Yesterday", showMarkAllAsRead: false),
        ),
        SizedBox(height: 32),
        UnReadNotification(),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ReadNotification(),
        ),
      ],
    );
  }
}

class UnReadNotification extends StatelessWidget {
  const UnReadNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF2F4F7),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: ShapeDecoration(
                color: const Color(0xFFEAF2FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: SvgPicture.asset(Assets.imagesChangedCalendar),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Schedule Changed',
                        style: AppStyles.styleRegular14px(context).copyWith(
                          color: const Color(0xFF242424),
                          fontWeight: FontWeight.w600,
                          height: 1.50,
                        ),
                      ),

                      Text(
                        '5h',
                        textAlign: TextAlign.right,
                        style: AppStyles.styleRegular12px(context).copyWith(
                          color: const Color(0xFF9E9E9E),
                          fontSize: 10,
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'Congratulations - your appointment is confirmed! We\'re looking forward to meeting with you and helping you achieve your goals.',
                          style: AppStyles.styleRegular12px(context).copyWith(
                            color: const Color(0xFF757575),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.60,
                          ),
                        ),
                      ),
                      SvgPicture.asset(Assets.imagesRedCircle),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReadNotification extends StatelessWidget {
  const ReadNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: ShapeDecoration(
            color: const Color(0xFFE9FAEF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: SvgPicture.asset(Assets.imagesSuccessCalendar),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Appointment Success',
                    style: AppStyles.styleRegular14px(context).copyWith(
                      color: const Color(0xFF242424),
                      fontWeight: FontWeight.w600,
                      height: 1.50,
                    ),
                  ),

                  Text(
                    '5h',
                    textAlign: TextAlign.right,
                    style: AppStyles.styleRegular12px(context).copyWith(
                      color: const Color(0xFF9E9E9E),
                      fontSize: 10,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Text(
                'Congratulations - your appointment is confirmed! We\'re looking forward to meeting with you and helping you achieve your goals.',
                style: AppStyles.styleRegular12px(context).copyWith(
                  color: const Color(0xFF757575),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 1.60,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NotificationFeed extends StatelessWidget {
  const NotificationFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
