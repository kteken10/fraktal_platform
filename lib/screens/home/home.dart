import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants/colors.dart';
import '../../ui/animation/arrow_animated.dart';
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
            Padding(
              padding: const EdgeInsets.only(right: .0),
              child: Image.asset(
                'logofraktal.png',
                height: 40,
              ),
            ),
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
                    const SizedBox(width: 16.0),
                    buildSocialIcon(
                      icon: FontAwesomeIcons.youtube,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0),
                    buildSocialIcon(
                      icon: FontAwesomeIcons.linkedin,
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0),
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
                // color: const Color.fromARGB(255, 221, 16, 16),
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/userlogo.png'),
                radius: 20,
              ),
            ),
          ),
        ],
      ),
      body: Scrollbar(
      
        thumbVisibility: true, 
        trackVisibility: true,
        thickness: 20,
        interactive: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              const ArrowAnimation(),
              // Ajout d'un rectangle blanc
              Container(
                width: double.infinity,
                height: 100, // Ajustez la hauteur selon vos besoins
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'Nos Service',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
