import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 640,
      child: Center(
        child: Image.asset(
          'home_carousel_1.jpg', 
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
