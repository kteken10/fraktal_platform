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
    String price;
    String imagePath;
    String logoPath;

    if (resource is Formation) {
      title = resource.title;
      subtitle = resource.subtitle;
      description = resource.description;
      timeRemaining = resource.duration;
      price = resource.price;
      imagePath = resource.imagePath;
      logoPath = "";
    } else if (resource is JobOffer) {
      title = resource.title;
      subtitle = resource.companyName;
      description = 'Poste disponible';
      timeRemaining = _getTimeRemaining(resource.endDate);
      price = 'Fin: ${resource.endDate.toLocal()}';
      imagePath = resource.imagePath;
      logoPath = resource.companyLogoUrl;
    } else {
      throw Exception('Type de ressource non reconnu');
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      width: double.infinity,
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
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
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
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryColor,
                  ),
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
          Container(
            height: 20, // Hauteur fixe pour le sous-titre
            child: Text(
              subtitle,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 4),
          Container(
            height: 40, // Hauteur fixe pour la description
            child: Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 4),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTimeRemaining(timeRemaining),
                _buildPrice(price),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeRemaining(String timeRemaining) {
    return Row(
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
    );
  }

  Widget _buildPrice(String price) {
    return Row(
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
    );
  }

  String _getTimeRemaining(DateTime endDate) {
    final now = DateTime.now();
    final difference = endDate.difference(now);

    if (difference.isNegative) {
      return 'Expiré';
    } else {
      final days = difference.inDays;
      final hours = difference.inHours % 24;
      return '$days jours, $hours heures restantes';
    }
  }
}
