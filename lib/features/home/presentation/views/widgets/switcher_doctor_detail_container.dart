import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SwitcherDoctorDetailContainer extends StatefulWidget {
  const SwitcherDoctorDetailContainer({
    super.key,
    this.onChanged,
    required this.valueNotifier,
  });

  final void Function(int)? onChanged;
  final ValueNotifier<int> valueNotifier;

  @override
  State<SwitcherDoctorDetailContainer> createState() =>
      _SwitcherDoctorDetailContainerState();
}

class _SwitcherDoctorDetailContainerState
    extends State<SwitcherDoctorDetailContainer> {
  @override
  void initState() {
    super.initState();
    widget.valueNotifier.addListener(_onValueChanged);
  }

  void _onValueChanged() {
    setState(() {});
  }

  @override
  void dispose() {
    widget.valueNotifier.removeListener(_onValueChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = widget.valueNotifier.value;

    return Row(
      children: List.generate(tabs.length, (index) {
        return Expanded(
          child: InkWell(
            onTap: () {
              widget.onChanged?.call(index);
            },
            child: currentIndex == index
                ? BlueContainer(text: tabs[index])
                : GreyContainer(text: tabs[index]),
          ),
        );
      }),
    );
  }
}

List<String> tabs = ["About", "Location", "Reviews"];

class BlueContainer extends StatelessWidget {
  const BlueContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 2, color: Color(0xFF247CFF))),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: Center(
          child: Text(
            text,
            style: AppStyles.styleRegular14px(context).copyWith(
              color: const Color(0xFF247CFF),
              fontWeight: FontWeight.w700,
              height: 1.50,
            ),
          ),
        ),
      ),
    );
  }
}

class GreyContainer extends StatelessWidget {
  const GreyContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 2, color: Color(0xFFECECEC))),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: Center(
          child: Text(
            text,
            style: AppStyles.styleRegular14px(context).copyWith(
              color: const Color(0xFF9E9E9E),
              fontWeight: FontWeight.w700,
              height: 1.50,
            ),
          ),
        ),
      ),
    );
  }
}
