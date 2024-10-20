import 'package:flutter/material.dart';
import '../ui/modal/auth_modal.dart';


class SolutionsPageMethods {
  static void onNotificationEnter(Function setState) {
    setState(() {
      // Logic to update notification scale
    });
  }

  static void onNotificationExit(Function setState) {
    setState(() {
      // Logic to reset notification scale
    });
  }

  static void onAvatarEnter(Function setState) {
    setState(() {
      // Logic to update avatar scale
    });
  }

  static void onAvatarExit(Function setState) {
    setState(() {
      // Logic to reset avatar scale
    });
  }

  static void openAuthModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AuthModal();
      },
    );
  }
}
