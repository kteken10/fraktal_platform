import 'package:flutter/material.dart';
import 'package:fraktal_platform/ui/blog.dart';
import '../utils/platform.dart';
import 'footer_card.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
  

    return SizedBox(
      height: 800,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: FooterCard(
              imagePath: 'AvaterEntrePreneur.jpg',
            ),
          ),
          const SizedBox(height: 20),
          const Blog(),
        ],
      ),
    );
  }
}
