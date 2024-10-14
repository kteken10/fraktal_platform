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
        LayoutBuilder(
          builder: (context, constraints) {
            final isMobile = constraints.maxWidth < 600; // Ajuste ce seuil selon tes besoins
            
            return MouseRegion(
              onEnter: _onEnter,
              onExit: _onExit,
              child: InkWell(
                onTap: widget.onTap,
                borderRadius: BorderRadius.circular(12.0), 
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200), // Durée de l'animation
                  transform: Matrix4.identity()..scale(_scale), // Appliquer l'échelle
                  margin: const EdgeInsets.symmetric(horizontal: 16.0), 
                 
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0), 
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8.0), 
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0), 
                          child: Image.asset(
                            widget.imagePath,
                            width: isMobile ? 80 : 104, // Ajustement de la largeur de l'image pour mobile
                            height: isMobile ? 80 : 104, // Ajustement de la hauteur de l'image pour mobile
                            fit: BoxFit.cover, 
                          ),
                        ),
                      ),
                      if (isMobile) ...[
                        // Sur mobile, le texte est affiché en dessous de l'image
                        Text(
                          widget.label,
                          style: const TextStyle(color: Colors.black, fontSize: 20), // Ajuste la taille du texte
                        ),
                      ] else ...[
                        // Sur les grands écrans, le texte est affiché à côté de l'image
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 8.0),
                            Text(
                              widget.label,
                              style: const TextStyle(color: Colors.black, fontSize: 24),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        if (widget.addSpacing) const SizedBox(height: 20.0),
      ],
    );
  }
}
