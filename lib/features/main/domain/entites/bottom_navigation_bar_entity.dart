import 'package:docdoc/constants/assets.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;

  BottomNavigationBarEntity({
    required this.activeImage,
    required this.inActiveImage,
  });
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
  BottomNavigationBarEntity(
    activeImage: Assets.imagesIconsHomeActive,
    inActiveImage: Assets.imagesIconsHome,
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.imagesIconsMessageTextActive,
    inActiveImage: Assets.imagesIconsMessageText,
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.imagesIconsCalendarActive,
    inActiveImage: Assets.imagesIconsCalendar,
  ),
];
