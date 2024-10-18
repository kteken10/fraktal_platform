import 'package:flutter/material.dart';

class AuthModal extends StatelessWidget {
  const AuthModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: 400,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.white, // Définir la couleur de fond ici
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center( // Centrer le contenu (peut-être ajouter d'autres widgets plus tard)
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Espace pour des widgets futurs
              SizedBox(height: 20), // Espace vide
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Ferme la modale
                },
                child: const Text('Fermer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
