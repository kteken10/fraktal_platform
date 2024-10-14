import 'package:flutter/material.dart';
import 'footer_card.dart'; // Assurez-vous d'importer le fichier contenant votre widget Rectangle.

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final rectangleWidth = screenWidth * 0.8; 

    return Container(
      height: 300,
      color: const Color.fromARGB(255, 177, 43, 43), 
      child: Row(
        children: [
          SizedBox(
            width: rectangleWidth,
            child: FooterCard (
              imagePath: 'AvaterEntrePreneur.jpg', 
             
            ),
          ),
          Expanded(
            child: Container(),
          ),
         
        ],
      ),
    );
  }
}
