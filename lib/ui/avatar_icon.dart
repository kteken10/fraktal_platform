// avatar-icon.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildSocialIcon({
  required IconData icon,
  required Color color,
  required VoidCallback onPressed,
}) {
  return Container(
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
          icon,
          color: color,
        ),
        onPressed: onPressed,
        iconSize: 15, // Ajustez la taille de l'icône si nécessaire
      ),
    ),
  );
}
