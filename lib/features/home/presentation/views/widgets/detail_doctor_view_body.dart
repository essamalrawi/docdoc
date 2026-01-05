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
  late PageController pageController;

  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();

    // pageController.addListener(() {
    //   currentPage = pageController.page!.round();
    //   setState(() {});
    // });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: DetailDoctorAppBar(),
        ),
        SizedBox(height: 33),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: DetailDoctorCard(),
        ),
        SizedBox(height: 33),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SwitcherDoctorDetailContainer(
            customIndex: currentPage,
            onChanged: (index) {
              if (!pageController.hasClients) return;
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
        ),
        SizedBox(height: 32),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: DetailDoctorPageView(
              pageController: pageController,
              onPageChanged: (index) {
                currentPage = index;
                 
                setState(() {});
              },
            ),
          ),
        ),
        SizedBox(height: 16),

        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: CustomButton(
                  text: "Make An Appointment",
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
