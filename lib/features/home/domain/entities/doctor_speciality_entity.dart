import 'package:docdoc/constants/assets.dart';

class DoctorSpecialityEntity {
  final String title;
  final String image;

  DoctorSpecialityEntity({required this.title, required this.image});
}

List<DoctorSpecialityEntity> doctorSpecialityList = [
  DoctorSpecialityEntity(image: Assets.imagesDoctor, title: "General"),
  DoctorSpecialityEntity(image: Assets.imagesEnt, title: "ENT"),
  DoctorSpecialityEntity(image: Assets.imagesBabe, title: "Pediatric"),
  DoctorSpecialityEntity(image: Assets.imagesKidneys, title: "Urologist"),
  DoctorSpecialityEntity(image: Assets.imagesDentistry, title: "Dentistry"),
  DoctorSpecialityEntity(image: Assets.imagesIntestine, title: "Intestine"),
  DoctorSpecialityEntity(image: Assets.imagesHistologist, title: "Histologist"),
  DoctorSpecialityEntity(image: Assets.imagesHepatology, title: "Hepatology"),
  DoctorSpecialityEntity(
    image: Assets.imagesCardiologist,
    title: "cardiologist",
  ),
  DoctorSpecialityEntity(image: Assets.imagesBrain, title: "Neurologic"),
  DoctorSpecialityEntity(image: Assets.imagesPulmonary, title: "Pulmonary"),
  DoctorSpecialityEntity(image: Assets.imagesOptometry, title: "Optometry"),
];
