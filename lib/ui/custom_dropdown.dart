import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../constants/colors.dart';

class CustomDropdown extends StatelessWidget {
  final String? selectedValue;
  final List<String> options;
  final Function(String?) onChanged;

  const CustomDropdown({
    super.key,
    required this.selectedValue,
    required this.options,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    // Si selectedValue est nul, utiliser le premier élément des options
    String initialValue = selectedValue ?? (options.isNotEmpty ? options.first : '');

    return SizedBox(
      width: 250, // Largeur fixe pour la dropdown
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          value: initialValue,
          isExpanded: true,
          onChanged: onChanged,
          buttonStyleData: ButtonStyleData(
            decoration: BoxDecoration(
              color: Colors.white, // Couleur de fond du bouton
              borderRadius: BorderRadius.circular(8), // Coins arrondis
            ),
          ),
          dropdownStyleData: DropdownStyleData(
            decoration: BoxDecoration(
              color: Colors.white, // Fond blanc pour le dropdown
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          items: options.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8), 
                decoration: BoxDecoration(
                  color: value == initialValue ? AppColors.primaryColor.withOpacity(0.2) : Colors.transparent,
                  borderRadius: BorderRadius.circular(8), 
                ),
                child: Text(value,style: TextStyle(
                  color:AppColors.ternaryColor
                ),),
              ),
            );
          }).toList(),
          selectedItemBuilder: (BuildContext context) {
            return options.map<Widget>((String value) {
              return Container(
                padding: EdgeInsets.all(8), // Ajout de padding
                child: Text(value,style: TextStyle(color:AppColors.ternaryColor),), 
              );
            }).toList();
          },
        ),
      ),
    );
  }
}
