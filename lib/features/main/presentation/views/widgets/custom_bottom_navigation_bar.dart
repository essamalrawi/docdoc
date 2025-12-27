import 'package:docdoc/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          InkWell(
            onTap: () {
              selectedIndex = 0;
              widget.onItemTapped(selectedIndex);
            },
            child: selectedIndex == 0
                ? SvgPicture.asset(Assets.imagesIconsHomeActive)
                : SvgPicture.asset(Assets.imagesIconsHome),
          ),
          InkWell(
            onTap: () {
              selectedIndex = 1;
              widget.onItemTapped(selectedIndex);
            },
            child: selectedIndex == 1
                ? SvgPicture.asset(Assets.imagesIconsMessageTextActive)
                : SvgPicture.asset(Assets.imagesIconsMessageText),
          ),
          const SizedBox(width: 72),
          InkWell(
            onTap: () {
              selectedIndex = 2;
              widget.onItemTapped(selectedIndex);
            },
            child: selectedIndex == 2
                ? SvgPicture.asset(Assets.imagesIconsCalendarActive)
                : SvgPicture.asset(Assets.imagesIconsCalendar),
          ),
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
