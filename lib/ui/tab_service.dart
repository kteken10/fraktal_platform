import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart';

import 'text.dart';

class TabService extends StatefulWidget {
  final String title;
  final bool isSelected; 
  final VoidCallback onTap; 

  const TabService({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected, 
  });

  @override
  // ignore: library_private_types_in_public_api
  _TabServiceState createState() => _TabServiceState();
}

class _TabServiceState extends State<TabService> {
  double _scale = 1.0;

  void _onEnter(PointerEvent details) {
    setState(() {
      _scale = 1.1; 
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _scale = 1.0; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: GestureDetector(
        onTap: widget.onTap, 
        child: AnimatedScale(
          scale: _scale,
          duration: const Duration(milliseconds: 200),
          child: Container(
            height: 80,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: widget.isSelected ? AppColors.primaryColor.withOpacity(0.3) : Colors.white,
              borderRadius: BorderRadius.circular(24.0),
            ),
            
            child: Center(
              child: TextWidget(
                widget.title,
                style: TextStyle(
                  
                  color: widget.isSelected ? Colors.white : Colors.black, 
                ),
              ),
            ),

          ),
        ),
      ),
    );
  }
}
