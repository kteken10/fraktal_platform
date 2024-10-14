import 'package:flutter/material.dart';
import 'package:fraktal_platform/ui/blog.dart';
import '../utils/platform.dart';
import 'footer_card.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = PlatformInfo.getScreenWidth(context);
    final rectangleWidth = screenWidth * 0.8;

    return SizedBox(
      height: 600,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                child: FooterCard(
                  imagePath: 'AvaterEntrePreneur.jpg',
                ),
              ),
            
            ],
          ),
          const SizedBox(height: 20), 
          const Blog(), 
        ],
      ),
    );
  }
}
