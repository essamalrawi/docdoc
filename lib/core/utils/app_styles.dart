import 'package:docdoc/core/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular12px(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14px(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular16px(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold24(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold36(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 36),
      fontWeight: FontWeight.w600,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 400;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
