import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
     child: Wrap(
                 spacing: 16.0, // Espacement horizontal
                  runSpacing: 16.0, // Espacement vertical
                  children: [
                  _buildColumn(),
                  _buildColumn(),
                  _buildColumn(),
                  ],
                )
     
    );
  }

  Widget _buildColumn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      width: 500,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 238, 237, 237).withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), 
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              ' your_image.png', 
              width: 100, 
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8.0), 
          const Text(
            'Blog Title', 
            style: TextStyle(
              fontSize: 16, 
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
