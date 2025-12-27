import 'package:docdoc/features/main/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:docdoc/features/main/presentation/views/widgets/main_view_body.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const routeName = "main";

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          MainViewBody(currentViewIndex: currentViewIndex),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavigationBar(
              onItemTapped: (index) {
                currentViewIndex = index;
                setState(() {});
              },
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: InkWell(onTap: () {}, child: SearchNavigationBarWidget()),
            ),
          ),
        ],
      ),
    );
  }
}
