import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants/colors.dart';

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
        width: 300,
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mon Profil',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.xmark),
                    color: AppColors.primaryColor,
                    onPressed: () {
                      Navigator.of(context).pop(); // Ferme la modale
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Contenu vierge
              SizedBox(height: 16), // Espace pour l'esthétique
            ],
          ),
        ),
      ),
    );
  }
}
