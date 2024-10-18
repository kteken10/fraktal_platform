import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../ui/carousel_solution.dart';
import '../../ui/modal/auth_modal.dart';
import '../../ui/search_input.dart';
import '../../ui/tab_service.dart';
import '../../ui/user_notif_icon.dart';

class SolutionsPage extends StatefulWidget {
  const SolutionsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SolutionsPageState createState() => _SolutionsPageState();
}

class _SolutionsPageState extends State<SolutionsPage> {
  int _selectedTabIndex = 0;
  double _notificationScale = 1.0;
  double _avatarScale = 1.0;

  void _onNotificationEnter() {
    setState(() {
      _notificationScale = 1.1;
    });
  }

  void _onNotificationExit() {
    setState(() {
      _notificationScale = 1.0;
    });
  }

  void _onAvatarEnter() {
    setState(() {
      _avatarScale = 1.1;
    });
  }

  void _onAvatarExit() {
    setState(() {
      _avatarScale = 1.0;
    });
  }

  void _openAuthModal() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AuthModal();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    final List<String> tabLabels = [
      'Formations',
      'Facility Management',
      'Management Client',
      'Marketing RH',
      'Outsourcing',
      'Job Board',
    ];

    final List<String> imagePaths = [
      'formationslide1.png',
      'formationslide2.png',
    ];

    final List<String> captions = [
      '#Apprenant',
      '#Professionnel',
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
              onNotificationHoverEnter: _onNotificationEnter,
              onNotificationHoverExit: _onNotificationExit,
              onAvatarHoverEnter: _onAvatarEnter,
              onAvatarHoverExit: _onAvatarExit,
              onAvatarTap: _openAuthModal, // Ouvrir la modale sur le clic
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final containerWidth = constraints.maxWidth * 0.75;

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
                  subtitles: [
                    'Nous vous accompagnons en matière de Formation',
                    'Votre recyclage ou perfectionnement des compétences est notre priorité'
                  ],
                  captions: captions,
                  imagePaths: imagePaths,
                  width: containerWidth,
                ),
              ),
              SizedBox(height: 8),
            ],
          );
        },
      ),
    );
  }
}
