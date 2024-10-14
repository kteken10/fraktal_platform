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
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            children: [
              
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    imagePath,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 
                  children: [
                    TextWidget(
                  "particuliers et Entreprises qui utilisent déjà Fraktal",
                  typeText:TextType.text3Xl,
                  style:
                      TextStyle(
                        color: AppColors.ternaryColor,
                        fontWeight: FontWeight.w100
                        )
                        ,
                 
                ),
                     TextWidget(
                  "50.91K + Visiteurs sur nos plateformes",
                  typeText:TextType.textXl,
                  style:
                      TextStyle(
                        color: AppColors.grayDarkColor,
                        fontWeight: FontWeight.w100
                        )
                        ,
                 
                ),
                     TextWidget(
                  "LES MEILLEURS TEMOIGNAGES",
                  typeText:TextType.textXl,
                  style:
                      TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w100
                        )
                        ,
                 
                ),
                     TextWidget(
                  "De Vrai chefs d'Entreprises, Employés, Candidats et Apprenants. Suivent notre communauté.",
                  typeText:TextType.textBase,
                  style:
                      TextStyle(
                        color: AppColors.ternaryColor,
                        fontWeight: FontWeight.w100
                        )
                        ,
                 
                ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (addSpacing) const SizedBox(height: 100.0),
      ],
    );
  }
}
