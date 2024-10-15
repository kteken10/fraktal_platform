import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart';
import 'text.dart';

class FooterCard extends StatelessWidget {
  final bool addSpacing;
  final String imagePath;
  final Color leftRectangleColor;

  const FooterCard({
    super.key,
    this.addSpacing = true,
    required this.imagePath,
    this.leftRectangleColor = AppColors.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600; // Correction de l'utilisation de constraints

    return Container(
      color: Colors.white, // Couleur de fond blanche
      margin: const EdgeInsets.symmetric(horizontal: 16), // Ajout de const pour la constance

      child: Column(
        children: [
          Center(
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      imagePath,
                      width: screenWidth > 600 ? 200 : 100,
                      height: screenWidth > 600 ? 200 : 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          "Particuliers et Entreprises qui utilisent déjà Fraktal",
                          typeText: isMobile ? TextType.text4Xl : TextType.text2Xl,
                          style: TextStyle(
                            color: AppColors.ternaryColor,
                          ),
                        ),
                        TextWidget(
                          "50.91K + Visiteurs sur nos plateformes",
                          typeText: isMobile ? TextType.textXl : TextType.text2Xl,
                          style: TextStyle(color: AppColors.grayDarkColor),
                        ),
                        TextWidget(
                          "LES MEILLEURS TEMOIGNAGES",
                          typeText: isMobile ? TextType.textXl : TextType.text2Xl,
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                        TextWidget(
                          "De Vrai chefs d'Entreprises, Employés, Candidats et Apprenants. Suivent notre communauté.",
                          typeText: isMobile ? TextType.textXl : TextType.textBase,
                          style: TextStyle(
                            color: AppColors.ternaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (addSpacing) const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
