import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart'; 
import '../../data/formations.dart'; // Assure-toi d'importer les bons fichiers
import '../../data/jobboard.dart';

class MediaCart extends StatelessWidget {
  final dynamic resource; // Utilisation de dynamic pour accepter les deux types

  const MediaCart({
    super.key,
    required this.resource,
  });

  @override
  Widget build(BuildContext context) {
    String title;
    String subtitle;
    String description;
    String duration;
    String price;
    String imagePath;

    // Mapping en fonction du type de ressource
    if (resource is Formation) {
      title = resource.title;
      subtitle = resource.subtitle;
      description = resource.description;
      duration = resource.duration;
      price = resource.price;
      imagePath = resource.imagePath;
    } else if (resource is JobOffer) {
      title = resource.title;
      subtitle = resource.companyName;
      description = 'Poste disponible';
      duration = 'Début: ${resource.startDate.toLocal()}';
      price = 'Fin: ${resource.endDate.toLocal()}';
      imagePath = resource.companyLogoUrl; // Utilise le logo de l'entreprise
    } else {
      throw Exception('Type de ressource non reconnu');
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.backColorFine,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1, color: AppColors.primaryColor.withOpacity(0.1)),
              ),
              width: double.infinity,
              height: 160,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            SizedBox(height: 4),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 200,
                height: 30,
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 4),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'horloge-icon.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(width: 4),
                          Text(
                            duration,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.ternaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'cash.png',
                            width: 30,
                            height: 30,
                          ),
                          SizedBox(width: 4),
                          Text(
                            price,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.ternaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
