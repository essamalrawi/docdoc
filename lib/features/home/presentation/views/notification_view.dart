import 'package:docdoc/features/home/presentation/views/widgets/notification_view_body.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  static const routeName = "notification-view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: NotificationViewBody()));
  }
}
