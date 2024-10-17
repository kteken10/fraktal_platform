import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../ui/carousel_solution.dart';
import '../../ui/search_input.dart';
import '../../ui/tab_service.dart';

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

  void _onNotificationEnter(PointerEvent details) {
    setState(() {
      _notificationScale = 1.1;
    });
  }

  void _onNotificationExit(PointerEvent details) {
    setState(() {
      _notificationScale = 1.0;
    });
  }

  void _onAvatarEnter(PointerEvent details) {
    setState(() {
      _avatarScale = 1.1;
    });
  }

  void _onAvatarExit(PointerEvent details) {
    setState(() {
      _avatarScale = 1.0;
    });
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
      'Apprenant',
      'Nous vous accompagnons en mode de formation',
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
                MouseRegion(
                  onEnter: _onNotificationEnter,
                  onExit: _onNotificationExit,
                  child: AnimatedScale(
                    scale: _notificationScale,
                    duration: const Duration(milliseconds: 200),
                    child: Container(
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
                  ),
                ),
                const SizedBox(width: 16.0),
                MouseRegion(
                  onEnter: _onAvatarEnter,
                  onExit: _onAvatarExit,
                  child: AnimatedScale(
                    scale: _avatarScale,
                    duration: const Duration(milliseconds: 200),
                    child: Padding(
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final containerWidth = constraints.maxWidth * 0.75; // Largeur personnalisée

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Alignement à gauche
            children: [
              Container(
           margin: EdgeInsets.symmetric(vertical: 8),
                width: containerWidth, // Appliquer la largeur personnalisée
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
                  // Contenu de la page en dessous des onglets
                  color: AppColors.backColor,
                  child: CarouselSolution(
                    captions: captions,
                    imagePaths: imagePaths,
                    width: containerWidth, // Passer la largeur
                  ),
                ),
             
            ],
          );
        },
      ),
    );
  }
}
