import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart'; 

class Rectangle extends StatefulWidget {
  final String label;
  final bool addSpacing;
  final String imagePath; 
  final Color leftRectangleColor;
  final VoidCallback? onTap; 

  const Rectangle({
    super.key, 
    required this.label, 
    this.addSpacing = true,
    required this.imagePath,
    this.leftRectangleColor = AppColors.primaryColor, 
    this.onTap, 
  });

  @override
  // ignore: library_private_types_in_public_api
  _RectangleState createState() => _RectangleState();
}

class _RectangleState extends State<Rectangle> {
  double _scale = 1.0;

  void _onEnter(PointerEvent details) {
    setState(() {
      _scale = 1.05; // Échelle pour l'animation
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _scale = 1.0; // Rétablir l'échelle
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MouseRegion(
          onEnter: _onEnter,
          onExit: _onExit,
          child: InkWell(
            onTap: widget.onTap,
            borderRadius: BorderRadius.circular(12.0), 
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200), // Durée de l'animation
              transform: Matrix4.identity()..scale(_scale), // Appliquer l'échelle
              margin: const EdgeInsets.symmetric(horizontal: 16.0), 
              height: 100, 
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0), 
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                    decoration: BoxDecoration(
                      color: widget.leftRectangleColor, 
                      borderRadius: BorderRadius.circular(12.0), 
                    ),
                    width: 15, 
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0), 
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0), 
                      child: Image.asset(
                        widget.imagePath,
                        width: 104, 
                        height: 104, 
                        fit: BoxFit.cover, 
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        widget.label,
                        style: const TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (widget.addSpacing) const SizedBox(height: 100.0),
      ],
    );
  }
}
