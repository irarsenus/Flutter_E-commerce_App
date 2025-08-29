import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class TDeviceUtils {
  TDeviceUtils._();

  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View
        .of(context)
        .viewInsets;
    return viewInsets.bottom == 0;
  }

  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View
        .of(context)
        .viewInsets;
    return viewInsets.bottom != 0;
  }

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight(Get) {
    return MediaQuery
        .of(Get.context!)
        .size
        .height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery
        .of(context)
        .size
        .width;
  }

  static double getPixelRatio(Get) {
    return MediaQuery
        .of(Get.context!)
        .devicePixelRatio;
  }

  static double getStatusBarHeight(Get) {
    return MediaQuery
        .of(Get.context!)
        .padding
        .top;
  }

  static double getBottomNavigationBarHeight(Get) {
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight(Get) {
    return kToolbarHeight;
  }

  static double getKeyBoardHeight(Get) {
 return  kToolbarHeight;

  }

}

  
