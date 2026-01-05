import 'package:docdoc/features/home/presentation/views/widgets/active_speciality_widget.dart';
import 'package:docdoc/features/home/presentation/views/widgets/un_active_speciality_widget.dart';
import 'package:flutter/material.dart';

class SpecialityListWidget extends StatefulWidget {
  const SpecialityListWidget({super.key});

  @override
  State<SpecialityListWidget> createState() => _SpecialityListWidgetState();
}

class _SpecialityListWidgetState extends State<SpecialityListWidget> {
  int tappedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: speciality.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: InkWell(
            onTap: () {
              tappedIndex = index;
              setState(() {});
            },
            child: tappedIndex == index
                ? ActiveSpecialityWidget(text: speciality[index])
                : UnActiveSpecialityWidget(text: speciality[index]),
          ),
        );
      },
    );
  }
}

List<String> speciality = ["All", "General", "Neurologic", "Pediatric"];
