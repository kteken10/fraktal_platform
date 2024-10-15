import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart';

class TabService extends StatefulWidget {
  final String title;

  const TabService({super.key, required this.title});

  @override
  // ignore: library_private_types_in_public_api
  _TabServiceState createState() => _TabServiceState();
}

class _TabServiceState extends State<TabService> {
  double _scale = 1.0;

  void _onEnter(PointerEvent details) {
    setState(() {
      _scale = 1.1; // Grossissement à 110%
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _scale = 1.0; // Retour à la taille normale
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 200),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Center(
            child: Text(
              widget.title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
