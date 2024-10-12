import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 100, // Ajustez la hauteur selon vos besoins
      // width: 400, // 3/5 de la largeur de l'écran
      // color: const Color.fromARGB(255, 177, 43, 43), // Couleur de fond blanc
      child: Center(
        child: Text(
          'Votre texte ici', // Remplacez par le texte que vous souhaitez afficher
          style: TextStyle(
            color: Colors.black,
            fontSize: 16, // Taille de police
          ),
        ),
      ),
    );
  }
}
