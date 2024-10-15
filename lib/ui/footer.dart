import 'package:flutter/material.dart';
import 'footer_card.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
 
      child: Column(
        
        children: [
          const SizedBox(height: 20),
          FooterCard(
            imagePath: 'AvaterEntrePreneur.jpg',
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
