
class JobOffer {
  final String companyName;
  final String companyLogoUrl;
  final String title;
  final String description; 
  final DateTime startDate; 
  final DateTime endDate;   
  final String imageUrl; 
  final String function; // Nouvelle propriété pour la fonction du poste

  JobOffer({
    required this.companyName,
    required this.title,
    required this.description,
    required this.companyLogoUrl,
    required this.startDate,
    required this.endDate,
    required this.imageUrl,
    required this.function, 
  });
}


List<JobOffer> jobOffers = [
  JobOffer(
    companyName: "SecureTech",
    title: "Expert en Cybersécurité",
    description: "Rejoignez notre équipe pour protéger les données sensibles.",
    companyLogoUrl: "LogoNextel.png",
    startDate: DateTime(2023, 10, 15),
    endDate: DateTime(2024, 11, 15),
    imageUrl: "ExpertCyberSecuriteJobImage.jpg",
    function: "Sécurité", 
  ),
  JobOffer(
    companyName: "Code Masters",
    title: "Développeur Python",
    description: "Développez des solutions innovantes en Python.",
    companyLogoUrl: "LogoOrange.png",
    startDate: DateTime(2023, 10, 20),
    endDate: DateTime(2024, 11, 20),
    imageUrl: "PythonDeveloperJobImage.jpg",
    function: "Développement", 
  ),
  JobOffer(
    companyName: "HR Innovations",
    title: "Assistant RH",
    description: "Soutenez notre équipe RH dans les tâches administratives.",
    companyLogoUrl: "LogoAirFrance.png",
    startDate: DateTime(2023, 10, 5),
    endDate: DateTime(2023, 11, 5),
    imageUrl: "AssistantRhJobImage.jpg",
    function: "Ressources Humaines",
  ),
  JobOffer(
    companyName: "Digital Marketing Group",
    title: "Marketing Digital",
    description: "Contribuez à notre stratégie marketing en ligne.",
    companyLogoUrl: "logoGoogle.png",
    startDate: DateTime(2023, 10, 10),
    endDate: DateTime(2024, 12, 10),
    imageUrl: "MarKetingDigitalJobImage.jpg",
    function: "Marketing", 
  ),
  JobOffer(
    companyName: "Orange Cameroun",
    title: "Ingénieur Réseau",
    description: "Assurez le bon fonctionnement de notre infrastructure réseau.",
    companyLogoUrl: "LogoOrange.png",
    startDate: DateTime(2023, 11, 1),
    endDate: DateTime(2024, 12, 31),
    imageUrl: "IngenieurReseauJobImage.jpg",
    function: "Ingénierie", 
  ),
  JobOffer(
    companyName: "Google",
    title: "Développeur d'Applications Mobiles",
    description: "Développez des applications mobiles pour nos utilisateurs.",
    companyLogoUrl: "logoGoogle.png",
    startDate: DateTime(2023, 11, 10),
    endDate: DateTime(2024, 11, 10),
    imageUrl: "MobileDeveloperJobImage.jpg",
    function: "Développement", 
  ),
  JobOffer(
    companyName: "UBA Cameroun",
    title: "Analyste de Données",
    description: "Analysez des données pour aider à la prise de décision.",
    companyLogoUrl: "logoUba.jpg",
    startDate: DateTime(2023, 10, 15),
    endDate: DateTime(2024, 11, 15),
    imageUrl: "AnalyseDonneJobImage.jpg",
    function: "Analyse", 
  ),
  JobOffer(
    companyName: "Aifrance",
    title: "Chef de Projet IT",
    description: "Dirigez des projets informatiques de grande envergure.",
    companyLogoUrl: "logoGoogle.png",
    startDate: DateTime(2023, 10, 30),
    endDate: DateTime(2024, 03, 30),
    imageUrl: "ChefProjetItJobImage.jpg",
    function: "Gestion de Projet", 
  ),
  JobOffer(
    companyName: "Afriland First Bank",
    title: "Responsable Marketing Digital",
    description: "Gérez notre présence en ligne et nos campagnes digitales.",
    companyLogoUrl: "LogoAfriland.jpg",
    startDate: DateTime(2023, 10, 25),
    endDate: DateTime(2024, 12, 25),
    imageUrl: "ResponsableMarketingJobImage.jpg",
    function: "Marketing", 
  ),
  JobOffer(
    companyName: "Nextel",
    title: "Technicien en Support Informatique",
    description: "Fournissez un support technique aux utilisateurs.",
    companyLogoUrl: "LogoNextel.png",
    startDate: DateTime(2023, 11, 5),
    endDate: DateTime(2024, 12, 05),
    imageUrl: "TechnicienSupportJobImage.jpg",
    function: "Support Technique",
  ),
];

class Candidate {
  final String firstName;
  final String lastName;
  final String position; 
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
    lastName: "",
    position: "Développeuse Mobile",
    bio: "Passionnée par les technologies mobiles et l'innovation.",
    pictureUrl: "AlineCandidatProfile.jpg",
  ),
  Candidate(
    firstName: "Brice",
    lastName: "",
    position: "Analyste de Données",
    bio: "Spécialiste en analyse de données et en visualisation.",
    pictureUrl: "BriceCandidatProfile.jpg",
  ),
  Candidate(
    firstName: "Elise",
    lastName: "",
    position: "Responsable Marketing",
    bio: "Experte en stratégies marketing et communication.",
    pictureUrl: "EliseCandidatProfile.jpg",
  ),
  Candidate(
    firstName: "Jospin",
    lastName: "",
    position: "Ingénieur Réseau",
    bio: "Passionné par les infrastructures réseau.",
    pictureUrl: "JospinCandidatProfile.jpg",
  ),
  Candidate(
    firstName: "Kevin",
    lastName: "Tenkam",
    position: "Développeur Backend",
    bio: "Amateur de développement et de systèmes scalables.",
    pictureUrl: "kevinCandidatProfile.jpg",
  ),
  Candidate(
    firstName: "Lyn",
    lastName: "Astride",
    position: "Chef de Projet",
    bio: "Gestionnaire de projets avec un sens aigu des détails.",
    pictureUrl: "LynCandidatProfile.jpg",
  ),
  Candidate(
    firstName: "Mireille",
    lastName: "SopGang",
    position: "Consultante en Stratégie",
    bio: "Experte en conseil et en développement stratégique.",
    pictureUrl: "MireilleCandidatProfile.jpg",
  ),
];

// Définition de la classe JobDomain
class JobDomain {
  final String name;
  final String imageUrl;
  final String description;

  JobDomain({
    required this.name,
    required this.imageUrl,
    required this.description,
  });
}
List<JobDomain> jobDomains = [
  JobDomain(
    name: "Développement",
    imageUrl: "development_domain.jpg",
    description: "Domaines liés au développement de logiciels et d'applications.",
  ),
  JobDomain(
    name: "Analyse de Données",
    imageUrl: "data_analysis_domain.jpg",
    description: "Domaines axés sur l'analyse et la visualisation des données.",
  ),
  JobDomain(
    name: "Marketing",
    imageUrl: "marketing_domain.jpg",
    description: "Domaines relatifs aux stratégies marketing et à la communication.",
  ),
  JobDomain(
    name: "Réseau",
    imageUrl: "network_domain.jpg",
    description: "Domaines touchant aux infrastructures et à la gestion des réseaux.",
  ),
  JobDomain(
    name: "Gestion de Projet",
    imageUrl: "project_management_domain.jpg",
    description: "Domaines axés sur la gestion et la coordination de projets.",
  ),
  JobDomain(
    name: "Consulting",
    imageUrl: "consulting_domain.jpg",
    description: "Domaines liés au conseil stratégique et au développement.",
  ),
];

