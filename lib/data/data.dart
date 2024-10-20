import '../ui/carousel_solution.dart';


final List<String> tabLabels = [
  'Formations',
  'Facility Management',
  'Management Client',
  'Marketing RH',
  'Outsourcing',
  'Job Board',
];

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
  // Ajoutez les autres listes ici...
];
