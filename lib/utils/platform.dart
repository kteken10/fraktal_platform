import 'dart:io' show Platform;
import 'dart:ui';
import 'package:flutter/material.dart';

class PlatformInfo {
  static String get platform {
    if (Platform.isAndroid) {
      return 'Android';
    } else if (Platform.isIOS) {
      return 'iOS';
    } else if (Platform.isWindows) {
      return 'Windows';
    } else if (Platform.isLinux) {
      return 'Linux';
    } else if (Platform.isMacOS) {
      return 'macOS';
    }
    return 'Unknown';
  }

  static Size getScreenSize(BuildContext context) {
    final FlutterView view = View.of(context);
    final size = view.physicalSize / view.devicePixelRatio;
    return size;
  }

  static double getScreenWidth(BuildContext context) {
    return getScreenSize(context).width;
  }

  static double getScreenHeight(BuildContext context) {
    return getScreenSize(context).height;
  }
}
