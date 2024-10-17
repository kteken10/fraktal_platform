import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart';
import 'text.dart';

class CarouselWidget extends StatelessWidget {
  final double width;
  final double height;
  final List<String> imagePaths;
  final List<String> texts;

  const CarouselWidget({
    super.key,
    this.width = double.infinity,
    this.height = 640,
    required this.imagePaths,
    required this.texts,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider.builder(
          itemCount: imagePaths.length,
          itemBuilder: (context, index, realIndex) {
            return Image.asset(
              imagePaths[index],
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            );
          },
          options: CarouselOptions(
            height: height,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            onPageChanged: (index, reason) {
              // Gérer les changements de page si nécessaire
            },
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
          ),
        ),
        Positioned(
          bottom: 20,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(imagePaths.length, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              );
            }),
          ),
        ),
        Positioned(
          left: 16,
          top: (height / 2) - 20,
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppColors.primaryColor),
            onPressed: () {
              // Gérer le retour en arrière
            },
          ),
        ),
        Positioned(
          right: 16,
          top: (height / 2) - 20,
          child: IconButton(
            icon: Icon(Icons.arrow_forward_ios_sharp, color: AppColors.primaryColor),
            onPressed: () {
              // Gérer l'avance
            },
          ),
        ),
        Positioned(
          left: width * 0.1,
          top: (height / 2) - 20,
          child: Container(
            width: width * 0.6,
            padding: const EdgeInsets.all(8.0),
            child: TextWidget(
              typeText: TextType.text6Xl,
              style: TextStyle(
                color: AppColors.primaryColor,
              ),
              texts[0], // Mettre à jour pour afficher le texte correspondant
            ),
          ),
        ),
      ],
    );
  }
}
