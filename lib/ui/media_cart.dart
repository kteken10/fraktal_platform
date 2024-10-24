import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart';
import '../../data/formations.dart';
import '../../data/jobboard.dart';

class MediaCart extends StatelessWidget {
  final dynamic resource;

  const MediaCart({
    super.key,
    required this.resource,
  });

  @override
  Widget build(BuildContext context) {
    String title;
    String subtitle;
    String description;
    String timeRemaining;
    String price = ''; // Initialisation de price
    String imagePath;
    String logoPath;

    switch (resource.runtimeType) {
      case const (Formation) :
        title = resource.title;
        subtitle = resource.subtitle;
        description = resource.description;
        timeRemaining = resource.duration; // Ajuster si nécessaire
        price = resource.price;
        imagePath = resource.imagePath;
        logoPath = ""; 
        break;
      case const (JobOffer):
        title = resource.title;
        subtitle = resource.companyName;
        description = resource.description;
        timeRemaining = _getTimeRemaining(resource.endDate);
        imagePath = resource.imagePath; 
        logoPath = resource.companyLogoUrl; 
        break;
      case const (Candidate):
        title = '${resource.firstName} ${resource.lastName}';
        subtitle = resource.position;
        description = resource.bio;
        timeRemaining = ''; // Pas applicable pour les candidats
        imagePath = resource.pictureUrl; 
        logoPath = ""; // Pas applicable pour les candidats
        break;
      default:
        throw Exception('Type de ressource non reconnu');
    }

    return Container(
      height: 340,
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
              height: 170,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                   child: Image(
                  image: ResizeImage(
                    AssetImage(imagePath),
                    width: double.infinity.toInt(), 
                    height: 350,
                  ),
                  // width: screenWidth,
                  // fit: BoxFit.cover,
                ),

                  // child: Image.asset(
                  //   imagePath,
                  //   // fit: BoxFit.cover,
                  //   // width: double.infinity,
                  //   fit: BoxFit.fitWidth,
                  //   height: double.infinity,
                  // ),
                ),
              ),
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  width: 200,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1, // Limitez le nombre de lignes
                  ),
                ),
                if (resource is JobOffer) ...[
                  Image.asset(
                    logoPath,
                    width: 75,
                    height: 50,
                  ),
                ],
              ],
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1, // Limitez le nombre de lignes
            ),
            SizedBox(height: 4),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            SizedBox(height: 4),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (resource is Candidate) ...[
                    // Aucune information de temps pour les candidats
                  ] else ...[
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
                              timeRemaining,
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
                  if (resource is Formation) ...[
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getTimeRemaining(DateTime endDate) {
    final now = DateTime.now();
    final difference = endDate.difference(now);

    if (difference.isNegative) {
      return 'Expiré'; // L'offre est expirée
    } else {
      final months = (difference.inDays / 30).floor();
      final days = difference.inDays % 30;
      final hours = difference.inHours % 24;

      if (months > 0) {
        return '$months mois, $days jours restantes';
      } else {
        return '$days jours, $hours heures restantes';
      }
    }
  }
}
