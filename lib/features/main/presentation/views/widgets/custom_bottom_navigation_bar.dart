import 'dart:developer';

import 'package:docdoc/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../domain/entites/bottom_navigation_bar_entity.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.onItemTapped});

  final ValueChanged<int> onItemTapped;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(Assets.imagesIconsHome),
          SvgPicture.asset(Assets.imagesIconsMessageText),
          const SizedBox(width: 72),
          SvgPicture.asset(Assets.imagesIconsCalendarActive),
          ProfileNavigationBarWidget(),
        ],
      ),
    );
  }
}

class SearchNavigationBarWidget extends StatelessWidget {
  const SearchNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        color: Color(0xff247CFF),
        borderRadius: BorderRadius.circular(27.92),
      ),
      child: Center(
        child: SvgPicture.asset(
          width: 24,
          height: 24,
          Assets.imagesIconsSearch,
        ),
      ),
    );
  }
}

class ProfileNavigationBarWidget extends StatelessWidget {
  const ProfileNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Center(
        child: Image.asset(width: 24, height: 24, Assets.imagesPersonBar),
      ),
    );
  }
}
