import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../data/data.dart';
import '../../ui/search_input.dart';
import '../../ui/tab_service.dart';
import '../../ui/user_notif_icon.dart';
import '../../utils/method.dart';
import '../../ui/carousel_solution.dart';
import '../../ui/media_cart.dart'; // Assurez-vous d'importer votre MediaCart

class SolutionsPage extends StatefulWidget {
  const SolutionsPage({super.key});

  @override
  _SolutionsPageState createState() => _SolutionsPageState();
}

class _SolutionsPageState extends State<SolutionsPage> {
  int _selectedTabIndex = 0;
  final double _notificationScale = 1.0;
  final double _avatarScale = 1.0;

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
            UserNotifIcon(
              notificationScale: _notificationScale,
              avatarScale: _avatarScale,
              onNotificationHoverEnter: () => SolutionsPageMethods.onNotificationEnter(setState),
              onNotificationHoverExit: () => SolutionsPageMethods.onNotificationExit(setState),
              onAvatarHoverEnter: () => SolutionsPageMethods.onAvatarEnter(setState),
              onAvatarHoverExit: () => SolutionsPageMethods.onAvatarExit(setState),
              onAvatarTap: () => SolutionsPageMethods.openAuthModal(context),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final containerWidth = constraints.maxWidth * 0.85;

            return Row(
              children: [
                // Colonne de gauche pour les TabService
                Expanded(
                  flex: 4, // Augmenter la valeur pour prendre plus de place
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 32, horizontal: 8),
                        width: containerWidth,
                        child: Row(
                          children: List.generate(tabLabels.length, (index) {
                            return Expanded(
                              child: TabService(
                                title: tabLabels[index],
                                isSelected: _selectedTabIndex == index,
                                onTap: () {
                                  setState(() {
                                    _selectedTabIndex = index;
                                  });
                                },
                              ),
                            );
                          }),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        color: AppColors.backColor,
                        child: CarouselSolution(
                          items: carouselItemsList[_selectedTabIndex],
                          width: containerWidth,
                        ),
                      ),
                      // Rectangle sous le Carousel
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        width: containerWidth,
                        height: 350, // Ajuste la hauteur selon tes besoins
                        color: Colors.white, // Couleur du rectangle
                        child: Row(
                          children: [
                            // Quatre parties avec MediaCart et traits de séparation
                            Expanded(
                              child: Column(
                                children: [
                                  MediaCart(
                                    imagePath: 'assets/formation_image_1.png',
                                    title: 'Domaine 1',
                                    subtitle: 'Formation 1',
                                    description: 'Description de la formation 1.',
                                    duration: 'Durée : 5 heures',
                                    price: 'Prix : 300 €',
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1,
                              height: 200, // Hauteur du trait
                              color: AppColors.backColorFine, // Couleur du trait
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  MediaCart(
                                    imagePath: 'assets/formation_image_2.png',
                                    title: 'Domaine 2',
                                    subtitle: 'Formation 2',
                                    description: 'Description de la formation 2.',
                                    duration: 'Durée : 3 heures',
                                    price: 'Prix : 200 €',
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1,
                              height: 200, // Hauteur du trait
                              color: AppColors.backColorFine, // Couleur du trait
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  MediaCart(
                                    imagePath: 'assets/formation_image_3.png',
                                    title: 'Domaine 3',
                                    subtitle: 'Formation 3',
                                    description: 'Description de la formation 3.',
                                    duration: 'Durée : 2 heures',
                                    price: 'Prix : 150 €',
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1,
                              height: 200, // Hauteur du trait
                              color: AppColors.backColorFine, // Couleur du trait
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  MediaCart(
                                    imagePath: 'assets/formation_image_4.png',
                                    title: 'Domaine 4',
                                    subtitle: 'Formation 4',
                                    description: 'Description de la formation 4.',
                                    duration: 'Durée : 4 heures',
                                    price: 'Prix : 250 €',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Colonne de droite
                Expanded(
                  flex: 1, // Garder la colonne de droite plus petite
                  child: Container(
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Colonne de droite',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // Ici, tu peux ajouter d'autres widgets au fur et à mesure
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
