import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Logo à l'extrémité gauche
            Padding(
              padding: const EdgeInsets.only(right: 8.0), // Espacement à droite du logo
              child: Image.asset(
                'assets/logofraktal.jpg', 
                height: 40, // Ajustez la hauteur selon vos besoins
              ),
            ),
            // Espace supplémentaire entre le logo et le rectangle
            // const SizedBox(width: 256.0), // Espacement de 16 pixels

            // Rectangle de fond blanc
            Container(
              padding: const EdgeInsets.all(8.0), // Espacement à l'intérieur du rectangle
              decoration: BoxDecoration(
                color: Colors.white, // Couleur de fond blanche
                borderRadius: BorderRadius.circular(8.0), // Coins arrondis
              ),
              child: const Text(
                'Titre', // Remplacez par le texte souhaité
                style: TextStyle(color: Colors.black), // Couleur du texte
              ),
            ),
          ],
        ),
        actions: const [
          // Avatar utilisateur à l'extrémité droite
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png'), // Remplacez par le chemin de votre image
              radius: 20, // Ajustez la taille selon vos besoins
            ),
          ),
        ],
      ),
      body: Container(
        color: Theme.of(context).colorScheme.onSurface, // Utilisation de la couleur de surface du thème
        child: const Center(
          child: Text('Bienvenue sur la page d\'accueil'),
        ),
      ),
    );
  }
}
