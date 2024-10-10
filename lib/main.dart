import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'navigation/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const ColorScheme colorScheme = ColorScheme(
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      tertiary: AppColors.ternaryColor,
      surface: AppColors.backColor,
      error: AppColors.backColorFine,
      onPrimary: AppColors.primaryColor,
      onSecondary: AppColors.secondaryColor,
      onSurface: AppColors.backColor,
      onError: Color.fromARGB(255, 214, 51, 51),
      brightness: Brightness.light,
    );
    return MaterialApp(
      title: 'FrakTal PlatForm Demo',
      theme: ThemeData(
        colorScheme: colorScheme,
      ),
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(bottom: 10.0), // Ajustez l'espacement au besoin
          child: const BottomNav(),
        ),
      ),
    );
  }
}
