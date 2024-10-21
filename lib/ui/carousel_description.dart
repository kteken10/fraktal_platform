import 'package:flutter/material.dart';

class ImageDisplay extends StatelessWidget {
  final String imagePath;

  const ImageDisplay({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
    
      height: 500, // Hauteur de l'image
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
