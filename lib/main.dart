import 'package:docdoc/core/helpers/on_generate_route.dart';
import 'package:docdoc/features/on_boarding/presentation/views/widgets/on_boarding_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DocdocApp());
}

class DocdocApp extends StatelessWidget {
  const DocdocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Inter', colorScheme: ColorScheme.light()),
      onGenerateRoute: onGenerateRoute,
      initialRoute: OnBoardingView.routeName,
    );
  }
}
