import 'package:flutter/material.dart';

class CustomSignInContainerIcon extends StatelessWidget {
  const CustomSignInContainerIcon({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F5F5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
      child: widget,
    );
  }
}
