import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart'; 

class MediaCart extends StatelessWidget {
  final String title; 
  final String subtitle; 
  final String description; 
  final String duration; 
  final String price; 
  final String imagePath; 

  const MediaCart({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.duration,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      width: double.infinity, // Prend toute la largeur disponible
      child: SingleChildScrollView( // Ajout du ScrollView
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
