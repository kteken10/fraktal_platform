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

  // Structure pour les carousels de chaque onglet
 final List<List<CarouselItem>> carouselItemsList = [
  [ // Formations
    CarouselItem(
      imagePath: 'formationslide1.png',
      caption: '#Apprenant',
      subtitle: 'Nous vous accompagnons en matière de Formation',
    ),
    CarouselItem(
      imagePath: 'formationslide2.png',
      caption: '#Professionnel',
      subtitle: 'Votre recyclage ou perfectionnement des compétences est notre priorité',
    ),
  ],
  [ // Facility Management
    CarouselItem(
      imagePath: 'facilitymanagementslide1.jpg',
      caption: '#Gestion',
      subtitle: 'Optimisez vos opérations de facility management pour un environnement de travail efficace.',
    ),
    CarouselItem(
      imagePath: 'facilitymanagementslide2.jpg',
      caption: '#Efficacité',
      subtitle: 'Améliorez l’efficacité de vos services avec nos solutions personnalisées.',
    ),
  ],
  [ // Management Client
    CarouselItem(
      imagePath: 'management_client_slide1.png',
      caption: '#Satisfaction Client',
      subtitle: 'Développez des relations durables avec vos clients grâce à une gestion efficace.',
    ),
    CarouselItem(
      imagePath: 'management_client_slide2.png',
      caption: '#Stratégies Gagnantes',
      subtitle: 'Découvrez des techniques éprouvées pour fidéliser votre clientèle.',
    ),
  ],
  [ // Marketing RH
    CarouselItem(
      imagePath: 'marketing_rh_slide1.png',
      caption: '#Attraction des Talents',
      subtitle: 'Attirez les meilleurs talents avec des stratégies de marketing innovantes.',
    ),
    CarouselItem(
      imagePath: 'marketing_rh_slide2.png',
      caption: '#Engagement des Employés',
      subtitle: 'Renforcez l’engagement de vos employés pour un environnement de travail positif.',
    ),
  ],
  [ // Outsourcing
    CarouselItem(
      imagePath: 'outsourcing_slide1.png',
      caption: '#Concentrez-vous sur l’Essentiel',
      subtitle: 'Libérez du temps et des ressources en déléguant vos tâches non essentielles.',
    ),
    CarouselItem(
      imagePath: 'outsourcing_slide2.png',
      caption: '#Expertise Externe',
      subtitle: 'Accédez à des experts dans divers domaines pour optimiser vos opérations.',
    ),
  ],
  [ // Job Board
    CarouselItem(
      imagePath: 'job_board_slide1.png',
      caption: '#Offres d’Emploi',
      subtitle: 'Découvrez les dernières offres d’emploi et boostez votre carrière.',
    ),
    CarouselItem(
      imagePath: 'job_board_slide2.png',
      caption: '#Connectez-vous aux Employeurs',
      subtitle: 'Facilitez votre recherche d\'emploi en vous connectant avec les bonnes entreprises.',
    ),
  ],
];


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
              onAvatarTap: _openAuthModal,
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
                      )
                    );
                  }),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                color: AppColors.backColor,
                child: CarouselSolution(
                  items: carouselItemsList[_selectedTabIndex], // Utilise les items du carousel correspondant à l'onglet sélectionné
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
