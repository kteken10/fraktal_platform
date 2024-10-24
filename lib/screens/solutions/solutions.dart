import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../data/data.dart';
import '../../data/formations.dart';
import '../../data/jobboard.dart';
import '../../ui/media_scroll_container.dart';
import '../../ui/custom_dropdown.dart';
import '../../ui/search_input.dart';
import '../../ui/tab_service.dart';
import '../../ui/user_notif_shop_icon.dart';
import '../../utils/method.dart';
import '../../ui/carousel_solution.dart';

class SolutionsPage extends StatefulWidget {
  const SolutionsPage({super.key});

  @override
  _SolutionsPageState createState() => _SolutionsPageState();
}

class _SolutionsPageState extends State<SolutionsPage> {
  int _selectedTabIndex = 0;
  final double _notificationScale = 1.0;
  final double _avatarScale = 1.0;

  String? _selectedFormationOption; // Option pour le dropdown des formations
  String? _selectedJobBoardOption; // Option pour le dropdown des emplois

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    final List<String> formationOptions = [
      'Formations Récentes',
      'Domaine de Formation',
      'Catalogues',
      'Tutoriel',
    ];
    final List<String> jobBoardOptions = [
      'Emplois Récents',
      'Type d\'Emploi',
      'Domaine d\'Emploi',
    ];

    List<String> currentOptions = _selectedTabIndex == 0 ? formationOptions : jobBoardOptions;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                'Prestation de Service',
                style: TextStyle(fontSize: 20, color: AppColors.primaryColor),
              ),
            ),
            SizedBox(
              width: 300.0,
              height: 100,
              child: SearchInput(controller: searchController),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: UserNotifIcon(
                notificationScale: _notificationScale,
                avatarScale: _avatarScale,
                onNotificationHoverEnter: () =>
                    SolutionsPageMethods.onNotificationEnter(setState),
                onNotificationHoverExit: () =>
                    SolutionsPageMethods.onNotificationExit(setState),
                onAvatarHoverEnter: () =>
                    SolutionsPageMethods.onAvatarEnter(setState),
                onAvatarHoverExit: () =>
                    SolutionsPageMethods.onAvatarExit(setState),
                onAvatarTap: () =>
                    SolutionsPageMethods.openAuthModal(context),
              ),
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
                  margin: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
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
                              _selectedFormationOption = null;
                              _selectedJobBoardOption = null; // Réinitialiser la sélection du dropdown des emplois
                            });
                          },
                        ),
                      );
                    })),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  color: AppColors.backColor,
                  child: CarouselSolution(
                    items: carouselItemsList[_selectedTabIndex],
                    width: containerWidth,
                  ),
                ),
                // Dropdown pour les formations
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: CustomDropdown(
                    selectedValue: _selectedTabIndex == 0 ? _selectedFormationOption : null,
                    options: formationOptions,
                    onChanged: (String? newValue) {
                      if (_selectedTabIndex == 0) {
                        setState(() {
                          _selectedFormationOption = newValue;
                        });
                      }
                    },
                  ),
                ),
                MediaScrollContainer(
                  items: _selectedTabIndex == 0 ? formations : jobOffers,
                  containerWidth: containerWidth,
                  isFormation: _selectedTabIndex == 0,
                ),
                // Dropdown pour les emplois
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: CustomDropdown(
                    selectedValue: _selectedTabIndex == 1 ? _selectedJobBoardOption : null,
                    options: jobBoardOptions,
                    onChanged: (String? newValue) {
                      if (_selectedTabIndex == 1) {
                        setState(() {
                          _selectedJobBoardOption = newValue;
                        });
                      }
                    },
                  ),
                ),
                MediaScrollContainer(
                  items: _selectedTabIndex == 5 ? candidates : domainesFormations,
                  containerWidth: containerWidth,
                  isFormation: _selectedTabIndex == 1,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
