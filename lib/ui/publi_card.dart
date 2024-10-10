// publi_cart.dart
import 'package:flutter/material.dart';

class PubliCard extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const PubliCard({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), 
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), 
          ),
        ],
      ),
      child: child, // Contenu du rectangle
    );
  }
}
