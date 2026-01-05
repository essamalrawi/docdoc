import 'package:docdoc/features/home/presentation/views/widgets/active_star_widget.dart';
import 'package:docdoc/features/home/presentation/views/widgets/un_active_star_widget.dart';
import 'package:flutter/material.dart';

class RatingListWidget extends StatefulWidget {
  const RatingListWidget({super.key});

  @override
  State<RatingListWidget> createState() => _RatingListWidgetState();
}

class _RatingListWidgetState extends State<RatingListWidget> {
  int tappedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: ratings.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: InkWell(
            onTap: () {
              tappedIndex = index;
              setState(() {});
            },
            child: tappedIndex == index
                ? ActiveStarWidget(text: ratings[index])
                : UnActiveStarWidget(text: ratings[index]),
          ),
        );
      },
    );
  }
}

List<String> ratings = ["All", "0", "1", "2", "3", "4", "5"];
