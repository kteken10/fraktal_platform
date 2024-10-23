import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../data/data.dart';
import '../../data/formations.dart';
import '../../data/jobboard.dart';
import '../../ui/custom_dropdown.dart';
import '../../ui/search_input.dart';
import '../../ui/tab_service.dart';
import '../../ui/user_notif_icon.dart';
import '../../utils/method.dart';
import '../../ui/carousel_solution.dart';
import '../../ui/media_cart.dart';


class SolutionsPage extends StatefulWidget {
  const SolutionsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SolutionsPageState createState() => _SolutionsPageState();
}


class _SolutionsPageState extends State<SolutionsPage> {
  int _selectedTabIndex = 0;
  final double _notificationScale = 1.0;
  final double _avatarScale = 1.0;

  String? _selectedFormation;

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    final List<String> formationOptions = [
      'Formations Récentes',
      'Domaine de Formation',
      'Catalogues',
      'Tutoriel'
    ];

    final List <String> JobBordOptions =[
      'Emplois Récents',
      ''
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
            final containerWidth = constraints.maxWidth;

            return Column(
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: CustomDropdown(
                    selectedValue: _selectedFormation,
                    options: formationOptions,
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedFormation = newValue;
                      });
                    },
                  ),
                ),
                Container(
                
                  width: containerWidth,
                  // height: 350,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: _selectedTabIndex == 0 // Exemple: 0 = Formations
                          ? formations.map((formation) {
                              return SizedBox(
                                width: containerWidth / 5,
                                child: MediaCart(
                                  resource: formation, // Passer la ressource
                                ),
                              );
                            }).toList()
                          : jobOffers.map((jobOffer) {
                              return SizedBox(
                                width: containerWidth / 5,
                                child: MediaCart(
                                  resource: jobOffer, // Passer la ressource
                                ),
                              );
                            }).toList(),
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
