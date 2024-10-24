class Formation {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;
  final String duration;
  final String price;

  Formation({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.duration,
    required this.price,
  });
}

class DomaineFormation {
  final String imageUrl;
  final String title;
  final String countFormation;
  final String description; // Ajouté pour plus de cohérence

  DomaineFormation({
    required this.imageUrl,
    required this.title,
    required this.countFormation,
    required this.description, // Ajouté ici
  });
}

List<Formation> formations = [
  Formation(
    imageUrl: 'frontend_developer.jpg',
    title: 'Développeur Frontend',
    subtitle: 'Formation en développement web',
    description: 'Apprenez à créer des sites web interactifs.',
    duration: 'Durée : 6 semaines',
    price: 'Prix : 600 €',
  ),
  Formation(
    imageUrl: 'machinelearing.jpg',
    title: 'Machine Learning',
    subtitle: 'Formation en IA',
    description: 'Comprendre les bases du machine learning.',
    duration: 'Durée : 8 semaines',
    price: 'Prix : 800 €',
  ),
  Formation(
    imageUrl: 'iot.jpg',
    title: 'Internet des Objets',
    subtitle: 'Formation IoT',
    description: 'Introduction aux technologies IoT.',
    duration: 'Durée : 4 semaines',
    price: 'Prix : 500 €',
  ),
  Formation(
    imageUrl: 'developpeurweb.jpg',
    title: 'Développeur Web',
    subtitle: 'Formation Full Stack',
    description: 'Maîtrisez le développement web complet.',
    duration: 'Durée : 10 semaines',
    price: 'Prix : 1000 €',
  ),
  Formation(
    imageUrl: 'cybersecurite.jpg',
    title: 'Cybersécurité',
    subtitle: 'Formation en sécurité informatique',
    description: 'Apprenez à protéger les systèmes d\'information.',
    duration: 'Durée : 12 semaines',
    price: 'Prix : 900 €',
  ),
  Formation(
    imageUrl: 'MarKetingRh.jpg',
    title: 'Marketing RH',
    subtitle: 'Formation en marketing des ressources humaines',
    description: 'Stratégies de marketing pour la gestion des ressources humaines.',
    duration: 'Durée : 5 semaines',
    price: 'Prix : 500 €',
  ),
  Formation(
    imageUrl: 'NodeJsFormation.jpg',
    title: 'Formation Node.js',
    subtitle: 'Développement Backend',
    description: 'Maîtrisez le développement d\'applications avec Node.js.',
    duration: 'Durée : 6 semaines',
    price: 'Prix : 700 €',
  ),
  Formation(
    imageUrl: 'ReactJsFormation.png',
    title: 'Formation React.js',
    subtitle: 'Développement Frontend',
    description: 'Apprenez à construire des interfaces utilisateur avec React.',
    duration: 'Durée : 7 semaines',
    price: 'Prix : 650 €',
  ),
  Formation(
    imageUrl: 'angularformation.jpg',
    title: 'Formation Angular',
    subtitle: 'Développement d\'applications web',
    description: 'Découvrez le développement d\'applications avec Angular.',
    duration: 'Durée : 6 semaines',
    price: 'Prix : 600 €',
  ),
  Formation(
    imageUrl: 'CommunityManager.jpg',
    title: 'Community Manager',
    subtitle: 'Formation en gestion de communauté',
    description: 'Stratégies et outils pour gérer une communauté en ligne.',
    duration: 'Durée : 4 semaines',
    price: 'Prix : 400 €',
  ),
  Formation(
    imageUrl: 'Homeimage.jpg',
    title: 'Design d\'Intérieur',
    subtitle: 'Formation en design d\'intérieur',
    description: 'Apprenez à concevoir des espaces intérieurs.',
    duration: 'Durée : 8 semaines',
    price: 'Prix : 750 €',
  ),
];
List<DomaineFormation> domainesFormations = [
  DomaineFormation(
    imageUrl: 'TechnologieDomaine.jpg',
    title: 'Technologie',
    countFormation: '6',
    description: 'Lié aux nouvelles technologies, ce secteur inclut le développement de logiciels, la cybersécurité et les systèmes d’information.',
  ),
  DomaineFormation(
    imageUrl: 'DataScienceDomaine.jpg',
    title: 'Data Science',
    countFormation: '2',
    description: 'Axé sur l\'analyse et la gestion des données, il englobe des techniques de statistiques, de machine learning et de visualisation des données.',
  ),
  DomaineFormation(
    imageUrl: 'DesignUIDomaine.jpg',
    title: 'Design UI',
    countFormation: '3',
    description: 'Centré sur l\'expérience utilisateur, ce champ se concentre sur l\'esthétique et la fonctionnalité des interfaces numériques.',
  ),
  DomaineFormation(
    imageUrl: 'MarketingDigitalDomain.jpg',
    title: 'Marketing Digital',
    countFormation: '3',
    description: 'Concerne les stratégies de marketing en ligne, y compris le référencement (SEO), la publicité sur les réseaux sociaux et l\'email marketing.',
  ),
];


