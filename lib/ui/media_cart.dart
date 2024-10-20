import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart'; // Assure-toi que ce chemin est correct

class MediaCart extends StatelessWidget {
  final String imagePath; // Chemin de l'image
  final String title; // Titre principal
  final String subtitle; // Sous-titre
  final String description; // Description
  final String duration; // Durée
  final String price; // Prix

  const MediaCart({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.duration,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int horlogeValue = 10; // Exemple de nombre pour l'horloge
    final int cashValue = 3000000; // Exemple de nombre pour le cash

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      width: double.infinity, // Prend toute la largeur disponible
      height: 350, // Ajuste la hauteur selon tes besoins
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alignement à gauche
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.backColorFine, // Assure-toi que cette couleur est définie
              borderRadius: BorderRadius.circular(12),
            ),
            width: double.infinity, // Prend toute la largeur disponible
            height: 180, // Hauteur du premier rectangle
            child: Center(
              child: Image.asset(
                imagePath, // Utilise le chemin de l'image passé en paramètre
                fit: BoxFit.cover, // Ajuste l'image pour couvrir le conteneur
              ),
            ),
          ),
          SizedBox(height: 4), // Espace entre les rectangles
          Align(
            alignment: Alignment.topLeft, // Alignement en haut à gauche
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.1), // Change la couleur si nécessaire
                borderRadius: BorderRadius.circular(12),
              ),
              width: 200, // Largeur du rectangle
              height: 30, // Hauteur du rectangle
              child: Center(
                child: Text(
                  title, // Utilise le titre passé en paramètre
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Texte en blanc
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 8), // Espace entre le titre et les textes
          Text(
            subtitle, // Utilise le sous-titre passé en paramètre
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Couleur du texte
            ),
          ),
          SizedBox(height: 4), // Espace entre les textes
          Text(
            description, // Utilise la description passée en paramètre
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey, // Couleur du texte
            ),
          ),
          SizedBox(height: 4), // Espace entre la description et la durée
          Text(
            duration, // Utilise la durée passée en paramètre
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey, // Couleur du texte
            ),
          ),
          Spacer(), // Espace flexible pour pousser le contenu vers le haut
          // Ligne divisée en deux colonnes
          SizedBox(
            width: double.infinity, // Prend toute la largeur disponible
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espace entre les colonnes
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Alignement à gauche
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/horloge-icon.png', // Chemin de l'image
                          width: 20, // Largeur de l'image
                          height: 20, // Hauteur de l'image
                        ),
                        SizedBox(width: 4), // Espace entre l'image et le nombre
                        Text('$horlogeValue', style: TextStyle(color: AppColors.ternaryColor)), // Nombre aléatoire
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Alignement à gauche
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/cash.png', // Chemin de l'image
                          width: 30, // Largeur de l'image
                          height: 30, // Hauteur de l'image
                        ),
                        SizedBox(width: 4), // Espace entre l'image et le nombre
                        Text('$cashValue', style: TextStyle(color: AppColors.ternaryColor)), // Nombre aléatoire
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
