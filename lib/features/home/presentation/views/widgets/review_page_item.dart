import 'package:docdoc/features/home/presentation/views/widgets/review_card.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/assets.dart';

class ReviewPageItem extends StatelessWidget {
  const ReviewPageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 350,
          child: ListView(
            children: [
              ReviewCard(
                starsCount: 4,
                image: Assets.imagesTestPerson,
                name: "Jane Cooper",
                review:
                    'As someone who lives in a remote area with limited access to healthcare, this telemedicine app has been a game changer for me. I can easily schedule virtual appointments with doctors and get the care I need without having to travel long distances.',
              ),
              SizedBox(height: 16),
              ReviewCard(
                image: Assets.imagesPerson2,
                starsCount: 3,
                name: "Robert Fox",
                review:
                    "I was initially skeptical about using a telemedicine app but this app has exceeded my expectations. The doctors are highly qualified and provide excellent care.",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
