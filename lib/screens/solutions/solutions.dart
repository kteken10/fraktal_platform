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
      'Tutoriel',
    ];

    final List<String> JobBordOptions = [
      'Emplois Récents',
      '',
    ];

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
                            });
                          },
                        ),
                      );
                    }),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  color: AppColors.backColor,
                  child: CarouselSolution(
                    items: carouselItemsList[_selectedTabIndex],
                    width: containerWidth,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
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
                // Utilisation du widget MediaScrollContainer
                MediaScrollContainer(
                  items: _selectedTabIndex == 0 ? formations : jobOffers,
                  containerWidth: containerWidth,
                  isFormation: _selectedTabIndex == 0,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
