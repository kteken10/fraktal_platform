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
  [ // Management Client
    CarouselItem(
      imagePath: 'ManagementClientSlide1.jpg',
      caption: '#GestionClient',
      subtitle: 'Renforcez la relation avec vos clients grâce à nos stratégies adaptées.',
    ),
    CarouselItem(
      imagePath: 'ManagementClientSlide2.jpg',
      caption: '#Satisfaction',
      subtitle: 'Assurez une satisfaction client maximale avec nos solutions innovantes.',
    ),
  ],
  
  [ // Marketing RH
    CarouselItem(
      imagePath: 'MarketingRHSlide1.jpg',
      caption: '#MarketingRH',
      subtitle: 'Optimisez votre stratégie de marketing pour attirer les meilleurs talents.',
    ),
    CarouselItem(
      imagePath: 'MarketingRhSlide2.jpg',
      caption: '#Attraction',
      subtitle: 'Améliorez votre attractivité en tant qu’employeur avec nos conseils.',
    ),
  ],
  [ // Outsourcing
    CarouselItem(
      imagePath: 'OutSourcingSlide1.jpg',
      caption: '#Externalisation',
      subtitle: 'Concentrez-vous sur votre cœur de métier avec nos services d’externalisation.',
    ),
    CarouselItem(
      imagePath: 'OutSourcingSlide2.jpg',
      caption: '#Efficacité',
      subtitle: 'Augmentez l’efficacité de votre entreprise en externalisant les tâches secondaires.',
    ),
  ],
  [ // Job Board
    CarouselItem(
      imagePath: 'JobBoarslide1.jpg',
      caption: '#Emploi',
      subtitle: 'Découvrez les meilleures opportunités d’emploi sur notre plateforme.',
    ),
    CarouselItem(
      imagePath: 'JobBoardslide2.jpg',
      caption: '#Carrière',
      subtitle: 'Propulsez votre carrière avec nos offres sur mesure.',
    ),
  ],
];
