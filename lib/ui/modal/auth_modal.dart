import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fraktal_platform/ui/text.dart';
import '../../constants/colors.dart';

class AuthModal extends StatefulWidget {
  const AuthModal({super.key});

  @override
  _AuthModalState createState() => _AuthModalState();
}

class _AuthModalState extends State<AuthModal> {
  String _modalTitle = 'Login'; // Titre par défaut
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  void _setModalTitle(String title) {
    setState(() {
      _modalTitle = title; // Met à jour le titre
    });
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16), // Ajuster l'espace vertical
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32.0),
        // boxShadow: [
        //   BoxShadow(
        //     color: AppColors.primaryColor.withOpacity(0.1), // Couleur de l'ombre
        //     spreadRadius: 3, // Étendue de l'ombre
        //     blurRadius: 8, // Flou de l'ombre
        //     offset: Offset(0, 3), // Position de l'ombre
        //   ),
        // ],
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.black), // Couleur du texte
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(
            icon,
            color: Colors.grey,
          ), // Ajout de l'icône
        ),
      ),
    );
  }

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
              padding: const EdgeInsets.only(right: 0.0),
              child: Image.asset('logofraktal.png', height: 40),
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
              // Titre de la dropDown
              Text(
                _modalTitle, // Affiche le titre dynamique
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16), // Espace pour l'esthétique
              Row(
              
                children: [
                  ElevatedButton(
                    onPressed: () => _setModalTitle('Login'), // Change le titre à Login
                    child: Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () => _setModalTitle('Sign Up'), // Change le titre à Sign Up
                    child: Text('Sign Up'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Champs de saisie stylisés
              if (_modalTitle == 'Login') ...[
                _buildTextField(
                  controller: _emailController,
                  hintText: 'example@gmail.com',
                  icon: FontAwesomeIcons.envelope, // Icône pour l'email
                ),
                _buildTextField(
                  controller: _passwordController,
                  hintText: '',
                  icon: FontAwesomeIcons.lock, // Icône pour le mot de passe
                ),
              ] else ...[
                _buildTextField(
                  controller: _nameController,
                  hintText: 'Nom',
                  icon: FontAwesomeIcons.user, // Icône pour le nom
                ),
                _buildTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  icon: FontAwesomeIcons.envelope, // Icône pour l'email
                ),
                _buildTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  icon: FontAwesomeIcons.lock, // Icône pour le mot de passe
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
