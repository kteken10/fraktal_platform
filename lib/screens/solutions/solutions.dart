import 'package:flutter/material.dart'; 
import '../../constants/colors.dart';
import '../../ui/search_input.dart';
import '../../ui/tab_service.dart';

class SolutionsPage extends StatelessWidget {
  const SolutionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    
    // Liste des labels pour les tabs
    final List<String> tabLabels = [
      'Formations',
      'Facility Management',
      'Management Client',
      'Marketing RH',
      'Outsourcing',
      'Job Board',
    ];

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
          final containerWidth = constraints.maxWidth * 0.75; // 75% de la largeur de l'écran
          
          return Container(
            margin: const EdgeInsets.all(16.0), // Marge autour du rectangle
            padding: const EdgeInsets.all(8.0), // Padding interne
            height: 80,
            width: containerWidth, // Largeur en pourcentage
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(tabLabels.length, (index) {
                return Expanded(
                  child: TabService(title: tabLabels[index]), 
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
