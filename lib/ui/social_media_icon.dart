import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants/colors.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width: 8.0),
        _buildSocialIcon(FontAwesomeIcons.instagram, Colors.pink, () {
          // Action pour Instagram
        }),
        const SizedBox(width: 16.0),
        _buildSocialIcon(FontAwesomeIcons.play, Colors.red, () {
          // Action pour YouTube
        }),
        const SizedBox(width: 16.0),
        _buildSocialIcon(FontAwesomeIcons.linkedinIn, AppColors.primaryColor, () {
          // Action pour LinkedIn
        }),
        const SizedBox(width: 16.0),
        _buildSocialIcon(FontAwesomeIcons.facebookF, AppColors.primaryColor, () {
          // Action pour Facebook
        }),
        const SizedBox(width: 16.0),
        _buildSocialIcon(FontAwesomeIcons.twitter, AppColors.primaryColor, () {
          // Action pour Twitter
        }),
      ],
    );
  }

  Widget _buildSocialIcon(IconData icon, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        onEnter: (_) => _onHover(true),
        onExit: (_) => _onHover(false),
        child: Icon(
          icon,
          color: color,
          size: 24.0,
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    // Ici, vous pouvez ajouter une animation ou changer d'état
    // Exemple : Utiliser une animation pour changer la taille ou la couleur
  }
}
