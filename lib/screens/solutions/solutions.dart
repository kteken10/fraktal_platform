import 'package:flutter/material.dart'; 

import '../../constants/colors.dart';
import '../../ui/search_input.dart';

class SolutionsPage extends StatelessWidget {
  const SolutionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Prestation de Service',
              style: TextStyle(fontSize: 20, color: AppColors.primaryColor),
            ),
            SizedBox(
              width: 300.0,
              height: 100,
              child: SearchInput(controller: searchController),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.notifications),
                    color: AppColors.primaryColor,
                    onPressed: () {
                      // Action à effectuer lors du clic
                    },
                  ),
                ),
                const SizedBox(width: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/userlogo.png'),
                      radius: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final containerWidth = constraints.maxWidth * 0.75; // 90% de la largeur de l'écran
          
          return Container(
            margin: const EdgeInsets.all(16.0), // Marge autour du rectangle
            padding: const EdgeInsets.all(16.0), // Padding interne
          height: 60,
            width: containerWidth, // Largeur en pourcentage
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) {
                return Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0), // Espace entre les colonnes
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300), // Bordure pour chaque colonne
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Center(
                      child: Text('Colonne ${index + 1}'),
                    ),
                  ),
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
