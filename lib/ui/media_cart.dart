import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart';
import '../../data/formations.dart';
import '../../data/jobboard.dart';
import '../utils/resource_mapper.dart';

class MediaCart extends StatelessWidget {
  final dynamic resource;
  const MediaCart({
    super.key,
    required this.resource,
  });

  @override
  Widget build(BuildContext context) {
    // Utilisez la méthode pour obtenir les attributs
    final attributes = mapResourceToAttributes(resource);

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
                  child: Image.asset(
                    attributes.imageUrl,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    height: double.infinity,
                  ),
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
                    attributes.title,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                if (resource is JobOffer) ...[
                  Image.asset(
                    attributes.logoPath,
                    width: 75,
                    height: 50,
                  ),
                ],
              ],
            ),
            SizedBox(height: 8),
            Text(
              attributes.subtitle,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            SizedBox(height: 4),
            Text(
              attributes.description,
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
                              attributes.timeRemaining,
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
                              attributes.price,
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
}
