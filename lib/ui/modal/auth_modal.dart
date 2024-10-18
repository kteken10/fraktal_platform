import 'package:flutter/material.dart'; 
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fraktal_platform/ui/text.dart';
import '../../constants/colors.dart';

class AuthModal extends StatefulWidget {
  const AuthModal({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
      margin: EdgeInsets.symmetric(vertical: 16), 
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(
            icon,
            size: 20,
            color: AppColors.primaryColor.withOpacity(0.5),
          ),
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
        height: 600,
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
                      Navigator.of(context).pop(); 
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                _modalTitle, 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Container(
                width: 200,
                color: Colors.white, 
                
               
                padding: EdgeInsets.symmetric(vertical: 8), 
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => _setModalTitle('Login'),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: _modalTitle == 'Login' ? AppColors.primaryColor : Colors.transparent,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            
                            color: _modalTitle == 'Login' ? Colors.white :AppColors.primaryColor),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    VerticalDivider(thickness: 1, color: Colors.grey), // Trait vertical
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () => _setModalTitle('Sign Up'),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: _modalTitle == 'Sign Up' ? AppColors.primaryColor : Colors.transparent,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: _modalTitle == 'Sign Up' ? Colors.white :AppColors.primaryColor),
                          
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              if (_modalTitle == 'Login') ...[
                _buildTextField(
                  controller: _emailController,
                  hintText: 'example@gmail.com',
                  icon: FontAwesomeIcons.envelope, 
                ),
                _buildTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  icon: FontAwesomeIcons.lock,
                ),
              ] else ...[
                _buildTextField(
                  controller: _nameController,
                  hintText: 'Nom',
                  icon: FontAwesomeIcons.user, 
                ),
                _buildTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  icon: FontAwesomeIcons.envelope, 
                ),
                _buildTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  icon: FontAwesomeIcons.lock,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
