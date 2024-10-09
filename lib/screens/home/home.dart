import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(
                'assets/logofraktal.jpg',
                height: 40,
              ),
            ),
            // Rectangle de fond blanc avec icônes des réseaux sociaux
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min, // Ajuste la largeur du Row
                children: [
                  const Text(
                    'Titre', // Remplacez par le texte souhaité
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(width: 8.0), // Espacement entre le texte et les icônes
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.instagram),
                    onPressed: () {
                      // Action pour Instagram
                    },
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.youtube),
                    onPressed: () {
                      // Action pour YouTube
                    },
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                    onPressed: () {
                      // Action pour LinkedIn
                    },
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.facebook),
                    onPressed: () {
                      // Action pour Facebook
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16.0),
          ],
        ),
        actions: const [
          // Avatar utilisateur à l'extrémité droite
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png'),
              radius: 20,
            ),
          ),
        ],
      ),
      body: Container(
        color: Theme.of(context).colorScheme.onSurface,
        child: const Center(
          child: Text('Bienvenue sur la page d\'accueil'),
        ),
      ),
    );
  }
}
