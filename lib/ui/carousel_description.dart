import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselDescription extends StatelessWidget {
  final List<String> imagePaths;

  const CarouselDescription({super.key, required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 600, // Hauteur du carrousel
        autoPlay: true, // Lecture automatique
        enlargeCenterPage: true, // Agrandir la page centrale
        
      ),
      items: imagePaths.map((path) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  path,
                  fit: BoxFit.cover,
                  width: double.infinity, // Largeur du conteneur
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
