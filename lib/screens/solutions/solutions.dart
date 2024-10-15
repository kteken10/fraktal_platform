import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fraktal_platform/ui/text.dart';
import '../../constants/colors.dart';
import '../../ui/avatar_icon.dart';

class SolutionsPage extends StatelessWidget {
  const SolutionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth <= 600; // Ajuste ce seuil selon tes besoins

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribue l'espace
          children: [
            // Zone pour afficher le titre de la page
            const Text(
              'Prestation de Service',
              style: TextStyle(fontSize: 20, color: AppColors.primaryColor), // Style du titre
            ),
          Row(
              children: [
                // Icône de notification dans un cercle
                Container(
                  padding: const EdgeInsets.all(2.0), // Ajuste le padding si nécessaire
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.notifications),
                    color: AppColors.primaryColor, // Couleur de l'icône
                    onPressed: () {
                      // Action à effectuer lors du clic
                    },
                  ),
                ),
                // Espace horizontal entre l'icône de notification et l'avatar
                const SizedBox(width: 16.0), // Ajuste la largeur selon tes besoins
                // Zone pour l'Avatar utilisateur
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/userlogo.png'),
                      radius: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: const Center(
        child: TextWidget(
          'Voici la page des solutions.',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
