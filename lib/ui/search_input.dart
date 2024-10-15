import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fraktal_platform/constants/colors.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const SearchInput({
    super.key,
    required this.controller,
    this.hintText = '...',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32.0),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withOpacity(0.1), // Couleur de l'ombre
            spreadRadius: 3, // Étendue de l'ombre
            blurRadius: 8, // Flou de l'ombre
            offset: Offset(0, 3), // Position de l'ombre
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.black), // Couleur du texte
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.ternaryColor),
          prefixIcon: Icon(
            FontAwesomeIcons.searchengin,
            color: AppColors.grayDarkColor,
          ), // Ajout de l'icône de recherche
        ),
      ),
    );
  }
}
