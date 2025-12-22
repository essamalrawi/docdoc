import 'package:docdoc/features/auth/presentation/views/widgets/face_id_view_body.dart';
import 'package:flutter/material.dart';

class FaceIdView extends StatelessWidget {
  const FaceIdView({super.key});
  static const routeName = "face-id";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: FaceIdViewBody());
  }
}
