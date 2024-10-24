
class JobOffer {
  final String companyName;
  final String companyLogoUrl;
  final String title;
  final String description; 
  final DateTime startDate; 
  final DateTime endDate;   
  final String imagePath; 
  final String function; // Nouvelle propriété pour la fonction du poste

  JobOffer({
    required this.companyName,
    required this.title,
    required this.description,
    required this.companyLogoUrl,
    required this.startDate,
    required this.endDate,
    required this.imagePath,
    required this.function, // Ajout du paramètre function
  });
}

// Liste des offres d'emploi avec la fonction
List<JobOffer> jobOffers = [
  JobOffer(
    companyName: "SecureTech",
    title: "Expert en Cybersécurité",
    description: "Rejoignez notre équipe pour protéger les données sensibles.",
    companyLogoUrl: "LogoNextel.png",
    startDate: DateTime(2023, 10, 15),
    endDate: DateTime(2024, 11, 15),
    imagePath: "ExpertCyberSecuriteJobImage.jpg",
    function: "Sécurité", // Ajout de la fonction
  ),
  JobOffer(
    companyName: "Code Masters",
    title: "Développeur Python",
    description: "Développez des solutions innovantes en Python.",
    companyLogoUrl: "LogoOrange.png",
    startDate: DateTime(2023, 10, 20),
    endDate: DateTime(2024, 11, 20),
    imagePath: "PythonDeveloperJobImage.jpg",
    function: "Développement", // Ajout de la fonction
  ),
  JobOffer(
    companyName: "HR Innovations",
    title: "Assistant RH",
    description: "Soutenez notre équipe RH dans les tâches administratives.",
    companyLogoUrl: "LogoAirFrance.png",
    startDate: DateTime(2023, 10, 5),
    endDate: DateTime(2023, 11, 5),
    imagePath: "AssistantRhJobImage.jpg",
    function: "Ressources Humaines", // Ajout de la fonction
  ),
  JobOffer(
    companyName: "Digital Marketing Group",
    title: "Marketing Digital",
    description: "Contribuez à notre stratégie marketing en ligne.",
    companyLogoUrl: "logoGoogle.png",
    startDate: DateTime(2023, 10, 10),
    endDate: DateTime(2024, 12, 10),
    imagePath: "MarKetingDigitalJobImage.jpg",
    function: "Marketing", // Ajout de la fonction
  ),
  JobOffer(
    companyName: "Orange Cameroun",
    title: "Ingénieur Réseau",
    description: "Assurez le bon fonctionnement de notre infrastructure réseau.",
    companyLogoUrl: "LogoOrange.png",
    startDate: DateTime(2023, 11, 1),
    endDate: DateTime(2024, 12, 31),
    imagePath: "IngenieurReseauJobImage.jpg",
    function: "Ingénierie", // Ajout de la fonction
  ),
  JobOffer(
    companyName: "Google",
    title: "Développeur d'Applications Mobiles",
    description: "Développez des applications mobiles pour nos utilisateurs.",
    companyLogoUrl: "logoGoogle.png",
    startDate: DateTime(2023, 11, 10),
    endDate: DateTime(2024, 11, 10),
    imagePath: "MobileDeveloperJobImage.jpg",
    function: "Développement", // Ajout de la fonction
  ),
  JobOffer(
    companyName: "UBA Cameroun",
    title: "Analyste de Données",
    description: "Analysez des données pour aider à la prise de décision.",
    companyLogoUrl: "logoUba.jpg",
    startDate: DateTime(2023, 10, 15),
    endDate: DateTime(2024, 11, 15),
    imagePath: "AnalyseDonneJobImage.jpg",
    function: "Analyse", // Ajout de la fonction
  ),
  JobOffer(
    companyName: "Aifrance",
    title: "Chef de Projet IT",
    description: "Dirigez des projets informatiques de grande envergure.",
    companyLogoUrl: "logoGoogle.png",
    startDate: DateTime(2023, 10, 30),
    endDate: DateTime(2024, 03, 30),
    imagePath: "ChefProjetItJobImage.jpg",
    function: "Gestion de Projet", // Ajout de la fonction
  ),
  JobOffer(
    companyName: "Afriland First Bank",
    title: "Responsable Marketing Digital",
    description: "Gérez notre présence en ligne et nos campagnes digitales.",
    companyLogoUrl: "LogoAfriland.jpg",
    startDate: DateTime(2023, 10, 25),
    endDate: DateTime(2024, 12, 25),
    imagePath: "ResponsableMarketingJobImage.jpg",
    function: "Marketing", // Ajout de la fonction
  ),
  JobOffer(
    companyName: "Nextel",
    title: "Technicien en Support Informatique",
    description: "Fournissez un support technique aux utilisateurs.",
    companyLogoUrl: "LogoNextel.png",
    startDate: DateTime(2023, 11, 5),
    endDate: DateTime(2024, 12, 05),
    imagePath: "TechnicienSupportJobImage.jpg",
    function: "Support Technique", // Ajout de la fonction
  ),
];

class Candidate {
  final String firstName;
  final String lastName;
  final String position; // Titre du poste
  final String bio;
  final String pictureUrl;


  Candidate({
    required this.firstName,
    required this.lastName,
    required this.position,
    required this.bio,
    required this.pictureUrl,
    
  });
}


List<Candidate> candidates = [
  Candidate(
    firstName: "Aline",
    lastName: "Candidat",
    position: "Développeuse Mobile",
    bio: "Passionnée par les technologies mobiles et l'innovation.",
    pictureUrl: "assets/AlineCandidatProfile.jpg",
  ),
  Candidate(
    firstName: "Brice",
    lastName: "Candidat",
    position: "Analyste de Données",
    bio: "Spécialiste en analyse de données et en visualisation.",
    pictureUrl: "assets/BriceCandidatProfile.jpg",
  ),
  Candidate(
    firstName: "Elise",
    lastName: "Candidat",
    position: "Responsable Marketing",
    bio: "Experte en stratégies marketing et communication.",
    pictureUrl: "assets/EliseCandidatProfile.jpg",
  ),
  Candidate(
    firstName: "Jospin",
    lastName: "Candidat",
    position: "Ingénieur Réseau",
    bio: "Passionné par les infrastructures réseau.",
    pictureUrl: "assets/JospinCandidatProfile.jpg",
  ),
  Candidate(
    firstName: "Kevin",
    lastName: "Candidat",
    position: "Développeur Backend",
    bio: "Amateur de développement et de systèmes scalables.",
    pictureUrl: "assets/kevinCandidatProfile.jpg",
  ),
  Candidate(
    firstName: "Lyn",
    lastName: "Candidat",
    position: "Chef de Projet",
    bio: "Gestionnaire de projets avec un sens aigu des détails.",
    pictureUrl: "assets/LynCandidatProfile.jpg",
  ),
  Candidate(
    firstName: "Mireille",
    lastName: "Candidat",
    position: "Consultante en Stratégie",
    bio: "Experte en conseil et en développement stratégique.",
    pictureUrl: "assets/MireilleCandidatProfile.jpg",
  ),
];