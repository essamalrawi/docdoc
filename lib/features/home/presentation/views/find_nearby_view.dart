import 'package:docdoc/features/home/presentation/views/widgets/find_nearby_view_body.dart';
import 'package:flutter/material.dart';

class FindNearbyView extends StatelessWidget {
  const FindNearbyView({super.key});

  static const routeName = "nearby-view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: FindNearbyViewBody()));
  }
}
