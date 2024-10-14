import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart'; 

class Rectangle extends StatelessWidget {
  final String label;
  final String imagePath; 
  final VoidCallback? onTap; 

  const Rectangle({
    super.key, 
    required this.label, 
    required this.imagePath,
    this.onTap, 
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        // Optionnel : ajouter une animation sur le survol
      },
      onExit: (_) {
        // Optionnel : ajouter une animation sur le survol
      },
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.0), 
        child: Container(
       
          margin: const EdgeInsets.symmetric(horizontal: 8.0), 
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0), 
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0), 
                child: Image.asset(
                  imagePath,
                  width: 80, // Largeur de l'image
                  height: 80, // Hauteur de l'image
                  fit: BoxFit.cover, 
                ),
              ),
              const SizedBox(height: 8.0), // Espacement entre l'image et le texte
              Text(
                label,
                style: const TextStyle(
                  color: Colors.black, 
                  fontSize: 24, // Taille fixe du texte
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
