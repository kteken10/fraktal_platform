import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
         
          return isMobile
              ? Column(
                  children: [
                    _buildColumn('assets/formationlogo.png', 'Label 1'),
                    _buildColumn('assets/facilitymanagementlogo.png', 'Label 2'),
                    _buildColumn('jobboardlogo.png', 'Label 3'),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildColumn('assets/formationlogo.png', 'Label 1'),
                    _buildColumn('assets/facilitymanagementlogo.png', 'Label 2'),
                    _buildColumn('jobboardlogo.png', 'Label 3'),
                  ],
                );
        },
      ),
    );
  }

  Widget _buildColumn(String imagePath, String label) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
      width: 500, // Largeur fixe de la carte
      height: 200, // Hauteur fixe de la carte
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 238, 237, 237).withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // Déplacement de l'ombre
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              imagePath,
              width: 100, // Ajuste si nécessaire
              height: 100, // Ajuste si nécessaire
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8.0), // Espacement entre l'image et le texte
          Text(
            label,
            style: const TextStyle(
              fontSize: 16, // Taille du texte
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
