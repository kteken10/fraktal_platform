import 'package:flutter/material.dart';


class ArrowAnimation extends StatefulWidget {
  const ArrowAnimation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ArrowAnimationState createState() => _ArrowAnimationState();
}




class _ArrowAnimationState extends State<ArrowAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // Initialiser l'AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true); // Répéter l'animation

    // Créer une animation de taille
    _animation = Tween<double>(begin: 1.0, end: 1.2).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); // Nettoyer l'AnimationController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, bottom: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: _animation,
            child: Image.asset(
              'arrow_down.png',
              height: 20,
              width: 40,
            ),
          ),
          ScaleTransition(
            scale: _animation,
            child: Image.asset(
              'arrow_down.png',
              height: 30,
              width: 60,
            ),
          ),
          ScaleTransition(
            scale: _animation,
            child: Image.asset(
              'arrow_down.png',
              height: 35,
              width: 80,
            ),
          ),
        ],
      ),
    );
  }
}