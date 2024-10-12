import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIcon extends StatefulWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const SocialIcon({
    super.key,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  _SocialIconState createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  double _scale = 1.0;

  void _onEnter(PointerEvent details) {
    setState(() {
      _scale = 1.2; // Échelle pour l'animation
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _scale = 1.0; // Rétablir l'échelle
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200), // Durée de l'animation
        transform: Matrix4.identity()..scale(_scale), // Appliquer l'échelle
        child: Container(
          padding: const EdgeInsets.all(4.0), // Espacement intérieur
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white, // Couleur de fond
          ),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: IconButton(
              icon: FaIcon(
                widget.icon,
                color: widget.color,
              ),
              onPressed: widget.onPressed,
              iconSize: 15, // Ajustez la taille de l'icône si nécessaire
            ),
          ),
        ),
      ),
    );
  }
}
