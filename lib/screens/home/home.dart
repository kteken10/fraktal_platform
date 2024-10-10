import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants/colors.dart';
import '../../ui/avatar_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Récupérer la taille de l'écran
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth <= 340;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Logo à l'extrémité gauche
            Padding(
              padding: const EdgeInsets.only(right: .0),
              child: Image.asset(
                'assets/logofraktal.jpg',
                height: 40,
              ),
            ),
            // Utiliser un Spacer pour centrer le bloc des icônes
            const Spacer(),
            if (!isSmallScreen) ...[
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: AppColors.backColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(width: 8.0),
                    buildSocialIcon(
                      icon: FontAwesomeIcons.instagram,
                      color: Colors.pink,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0), // Espace entre les icônes
                    buildSocialIcon(
                      icon: FontAwesomeIcons.youtube,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0), // Espace entre les icônes
                    buildSocialIcon(
                      icon: FontAwesomeIcons.linkedin,
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0), // Espace entre les icônes
                    buildSocialIcon(
                      icon: FontAwesomeIcons.facebook,
                      color: Colors.blueAccent,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
            const Spacer(),
            const SizedBox(width: 16.0),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 221, 16, 16), // Couleur de fond
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/userlogo.png'),
                radius: 20,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Ligne occupante toute la largeur avec hauteur définie
          SizedBox(
            width: double.infinity,
            height: 700,
            child: Center(
              child: Image.asset(
                'home_carousel_1.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          // Trois icônes de flèche vers le bas
         Padding(
  padding: const EdgeInsets.only(top: 0.0, bottom: 16.0),
  // child: Column(
  //   children: [
      
  //     Image.asset(
  //       'arrow_down.png',
  //       height: 20, 
  //       width: 40,
  //     ),
  //     Image.asset(
  //       'arrow_down.png',
  //       height: 30, 
  //       width: 60,
  //     ),
     
  //     Image.asset(
  //       'arrow_down.png',
  //       height: 35, 
  //       width: 80,
  //     ),
  //   ],
  // ),
),
          
        ],
      ),
    );
  }
}
