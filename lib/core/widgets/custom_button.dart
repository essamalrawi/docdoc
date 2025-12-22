import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,

      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: const Color(0xFF247CFF)),
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Color(0xFF247CFF),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppStyles.styleRegular14px(context).copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            height: 1.50,
          ),
        ),
      ),
    );
  }
}
