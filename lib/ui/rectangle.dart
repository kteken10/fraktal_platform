import 'package:flutter/material.dart'; 

class Rectangle extends StatelessWidget {
  final String label;
  final bool addSpacing;

  const Rectangle({super.key, required this.label, this.addSpacing = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0), 
          height: 100, 
          child: Row(
            children: [
              // Rectangle collé à la bordure gauche
              Container(
                color: Colors.blue, // Couleur du rectangle collé
                width: 20, // Largeur du rectangle collé
                height: 100, // Hauteur égale au rectangle principal
              ),
              // Rectangle principal
              Expanded(
                child: Container(
                  color: Colors.white,
                  height: 100,
                  child: Center(
                    child: Text(
                      label,
                      style: const TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (addSpacing) const SizedBox(height: 100.0), // Espace vertical entre les rectangles
      ],
    );
  }
}
