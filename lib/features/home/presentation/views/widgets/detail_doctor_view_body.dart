import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:docdoc/features/home/presentation/views/widgets/detail_doctor_page_view.dart';
import 'package:docdoc/features/home/presentation/views/widgets/switcher_doctor_detail_container.dart';
import 'package:flutter/material.dart';
import 'detail_doctor_app_bar.dart';
import 'detail_doctor_card.dart';

class DetailDoctorViewBody extends StatefulWidget {
  const DetailDoctorViewBody({super.key});

  @override
  State<DetailDoctorViewBody> createState() => _DetailDoctorViewBodyState();
}

class _DetailDoctorViewBodyState extends State<DetailDoctorViewBody> {
  final ValueNotifier<int> _pageIndexNotifier = ValueNotifier(0);
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    _pageIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: DetailDoctorAppBar(),
        ),

        const SizedBox(height: 33),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: DetailDoctorCard(),
        ),

        const SizedBox(height: 33),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SwitcherDoctorDetailContainer(
            valueNotifier: _pageIndexNotifier,
            onChanged: (index) {
              if (!pageController.hasClients) return;

              _pageIndexNotifier.value = index;
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
        ),

        const SizedBox(height: 32),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: DetailDoctorPageView(
              pageController: pageController,
              onPageChanged: (index) {
                _pageIndexNotifier.value = index;
              },
            ),
          ),
        ),

        const SizedBox(height: 16),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: CustomButton(text: "Make An Appointment", onPressed: () {}),
        ),

        const SizedBox(height: 16),
      ],
    );
  }
}
