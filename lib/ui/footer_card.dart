import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart';
import 'text.dart';

class FooterCard extends StatelessWidget {
  final bool addSpacing;
  final String imagePath;
  final Color leftRectangleColor;

  const FooterCard({
    Key? key,
    this.addSpacing = true,
    required this.imagePath,
    this.leftRectangleColor = AppColors.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Définir des tailles de texte en fonction de la largeur de l'écran
    double textSize3Xl = screenWidth > 600 ? 24.0 : 18.0; // Taille pour text3Xl
    double textSizeXl = screenWidth > 600 ? 20.0 : 16.0; // Taille pour textXl
    double textSizeBase = screenWidth > 600 ? 14.0 : 12.0; // Taille pour textBase

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          
          height: screenWidth > 600 ? 300 : 248,
         
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
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
    margin: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0), // Ajout de marges horizontales
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          "Particuliers et Entreprises qui utilisent déjà Fraktal",
          typeText: TextType.text3Xl,
          style: TextStyle(
            color: AppColors.ternaryColor,
            fontSize: textSize3Xl,
            fontWeight: FontWeight.w100,
          ),
        ),
        TextWidget(
          "50.91K + Visiteurs sur nos plateformes",
          typeText: TextType.textXl,
          style: TextStyle(
            color: AppColors.grayDarkColor,
            fontSize: textSizeXl,
            fontWeight: FontWeight.w100,
          ),
        ),
        TextWidget(
          "LES MEILLEURS TEMOIGNAGES",
          typeText: TextType.textXl,
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: textSizeXl,
            fontWeight: FontWeight.w100,
          ),
        ),
        TextWidget(
          "De Vrai chefs d'Entreprises, Employés, Candidats et Apprenants. Suivent notre communauté.",
          typeText: TextType.textBase,
          style: TextStyle(
            color: AppColors.ternaryColor,
            fontSize: textSizeBase,
            fontWeight: FontWeight.w100,
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
    );
  }
}
