// formations.dart

class Formation {
  final String imagePath; // Chemin de l'image
  final String title; // Titre principal
  final String subtitle; // Sous-titre
  final String description; // Description
  final String duration; // Durée
  final String price; // Prix

  Formation({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.duration,
    required this.price,
  });
}

// Liste des formations
List<Formation> formations = [
  Formation(
    imagePath: 'frontend_developer.jpg',
    title: 'Développeur Frontend',
    subtitle: 'Formation en développement web',
    description: 'Apprenez à créer des sites web interactifs.',
    duration: 'Durée : 6 semaines',
    price: 'Prix : 600 €',
  ),
  Formation(
    imagePath: 'machinelearing.jpg',
    title: 'Machine Learning',
    subtitle: 'Formation en IA',
    description: 'Comprendre les bases du machine learning.',
    duration: 'Durée : 8 semaines',
    price: 'Prix : 800 €',
  ),
  Formation(
    imagePath: 'iot.jpg',
    title: 'Internet des Objets',
    subtitle: 'Formation IoT',
    description: 'Introduction aux technologies IoT.',
    duration: 'Durée : 4 semaines',
    price: 'Prix : 500 €',
  ),
  Formation(
    imagePath: 'developpeurweb.jpg',
    title: 'Développeur Web',
    subtitle: 'Formation Full Stack',
    description: 'Maîtrisez le développement web complet.',
    duration: 'Durée : 10 semaines',
    price: 'Prix : 1000 €',
  ),
  Formation(
    imagePath: 'cybersecurite.jpg',
    title: 'Cybersécurité',
    subtitle: 'Formation en sécurité informatique',
    description: 'Apprenez à protéger les systèmes d\'information.',
    duration: 'Durée : 12 semaines',
    price: 'Prix : 900 €',
  ),
  // Nouvelles formations ajoutées
  Formation(
    imagePath: 'MarKetingRh.jpg',
    title: 'Marketing RH',
    subtitle: 'Formation en marketing des ressources humaines',
    description: 'Stratégies de marketing pour la gestion des ressources humaines.',
    duration: 'Durée : 5 semaines',
    price: 'Prix : 500 €',
  ),
  Formation(
    imagePath: 'NodeJsFormation.jpg',
    title: 'Formation Node.js',
    subtitle: 'Développement Backend',
    description: 'Maîtrisez le développement d\'applications avec Node.js.',
    duration: 'Durée : 6 semaines',
    price: 'Prix : 700 €',
  ),
  Formation(
    imagePath: 'ReactJsFormation.png',
    title: 'Formation React.js',
    subtitle: 'Développement Frontend',
    description: 'Apprenez à construire des interfaces utilisateur avec React.',
    duration: 'Durée : 7 semaines',
    price: 'Prix : 650 €',
  ),
  Formation(
    imagePath: 'angularformation.jpg',
    title: 'Formation Angular',
    subtitle: 'Développement d\'applications web',
    description: 'Découvrez le développement d\'applications avec Angular.',
    duration: 'Durée : 6 semaines',
    price: 'Prix : 600 €',
  ),
  Formation(
    imagePath: 'CommunityManager.jpg',
    title: 'Community Manager',
    subtitle: 'Formation en gestion de communauté',
    description: 'Stratégies et outils pour gérer une communauté en ligne.',
    duration: 'Durée : 4 semaines',
    price: 'Prix : 400 €',
  ),
  Formation(
    imagePath: 'Homeimage.jpg',
    title: 'Design d\'Intérieur',
    subtitle: 'Formation en design d\'intérieur',
    description: 'Apprenez à concevoir des espaces intérieurs.',
    duration: 'Durée : 8 semaines',
    price: 'Prix : 750 €',
  ),
];
