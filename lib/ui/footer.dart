import 'package:flutter/material.dart';
import '../../ui/rectangle.dart'; // Assurez-vous d'importer le fichier contenant votre widget Rectangle.

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final rectangleWidth = screenWidth * 0.8; // 4/5 de la largeur de l'écran

    return Container(
      height: 200, // Ajustez la hauteur selon vos besoins
      color: const Color.fromARGB(255, 177, 43, 43), // Couleur de fond
      child: Row(
        children: [
          SizedBox(
            width: rectangleWidth, // Largeur du rectangle
            child: Rectangle(
              label: 'Rectangle dans le Footer', // Modifiez le label selon vos besoins
              imagePath: 'votre_image.png', // Remplacez par le chemin de votre image si nécessaire
              onTap: () => print("Rectangle tapped!"),
            ),
          ),
          Expanded(
            child: Container(), // Espace vide pour pousser le rectangle à gauche
          ),
          Center(
            child: Text(
              'Votre texte ici', // Remplacez par le texte que vous souhaitez afficher
              style: TextStyle(
                color: Colors.black,
                fontSize: 16, // Taille de police
              ),
            ),
          ),
        ],
      ),
    );
  }
}
