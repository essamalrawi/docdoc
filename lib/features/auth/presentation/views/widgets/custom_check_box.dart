import 'package:docdoc/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChecked,
  });

  final ValueNotifier<bool> isChecked;
  final ValueChanged<bool> onChecked;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  void initState() {
    widget.isChecked.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.isChecked.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChecked(!widget.isChecked.value);
      },
      child: AnimatedContainer(
        width: 18,
        height: 18,
        duration: const Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          color: widget.isChecked.value
              ? const Color(0xFF247CFF)
              : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              color: widget.isChecked.value
                  ? Colors.transparent
                  : const Color(0xFFA9B2B8),
            ),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: widget.isChecked.value
            ? Padding(
                padding: const EdgeInsets.all(3),
                child: SvgPicture.asset(Assets.imagesIconsCheck),
              )
            : const SizedBox(),
      ),
    );
  }
}
