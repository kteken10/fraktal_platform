import 'package:flutter/material.dart';

class NeumorphicContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final Color color;

  const NeumorphicContainer({
    super.key,
    required this.child,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.all(16),
    this.color = Colors.white, required EdgeInsets margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(4, 4), // Ombre inférieure droite
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(-4, -4), // Ombre supérieure gauche
          ),
        ],
      ),
      child: child,
    );
  }
}
