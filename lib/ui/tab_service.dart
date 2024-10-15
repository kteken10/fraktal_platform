import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart';

class TabService extends StatelessWidget {
  final String title;

  const TabService({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
     
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(color: Colors.white), 
        ),
      ),
    );
  }
}
