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

class JobOffer {
  final String companyName;
  final String companyLogoUrl;
  final String title;
  final String description; // Ajout du champ description
  final DateTime startDate; 
  final DateTime endDate;   
  final String imagePath; 

  JobOffer({
    required this.companyName,
    required this.title,
    required this.description, // Ajout du paramètre description
    required this.companyLogoUrl,
    required this.startDate,
    required this.endDate,
    required this.imagePath,
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
    imagePath: "ExpertCyberSecuriteJobImage.jpg",
  ),
  JobOffer(
    companyName: "Code Masters",
    title: "Développeur Python",
    description: "Développez des solutions innovantes en Python.",
    companyLogoUrl: "LogoOrange.png",
    startDate: DateTime(2023, 10, 20),
    endDate: DateTime(2024, 11, 20),
    imagePath: "PythonDeveloperJobImage.jpg",
  ),
  JobOffer(
    companyName: "HR Innovations",
    title: "Assistant RH",
    description: "Soutenez notre équipe RH dans les tâches administratives.",
    companyLogoUrl: "LogoAirFrance.png",
    startDate: DateTime(2023, 10, 5),
    endDate: DateTime(2023, 11, 5),
    imagePath: "AssistantRhJobImage.jpg",
  ),
  JobOffer(
    companyName: "Digital Marketing Group",
    title: "Marketing Digital",
    description: "Contribuez à notre stratégie marketing en ligne.",
    companyLogoUrl: "logoGoogle.png",
    startDate: DateTime(2023, 10, 10),
    endDate: DateTime(2024, 12, 10),
    imagePath: "MarKetingDigitalJobImage.jpg",
  ),
  JobOffer(
    companyName: "Orange Cameroun",
    title: "Ingénieur Réseau",
    description: "Assurez le bon fonctionnement de notre infrastructure réseau.",
    companyLogoUrl: "LogoOrange.png",
    startDate: DateTime(2023, 11, 1),
    endDate: DateTime(2024, 12, 31),
    imagePath: "IngenieurReseauJobImage.jpg",
  ),
  JobOffer(
    companyName: "Google",
    title: "Développeur d'Applications Mobiles",
    description: "Développez des applications mobiles pour nos utilisateurs.",
    companyLogoUrl: "logoGoogle.png",
    startDate: DateTime(2023, 11, 10),
    endDate: DateTime(2024, 11, 10),
    imagePath: "MobileDeveloperJobImage.jpg",
  ),
  JobOffer(
    companyName: "UBA Cameroun",
    title: "Analyste de Données",
    description: "Analysez des données pour aider à la prise de décision.",
    companyLogoUrl: "logoUba.jpg",
    startDate: DateTime(2023, 10, 15),
    endDate: DateTime(2024, 11, 15),
    imagePath: "AnalyseDonneJobImage.jpg",
  ),
  JobOffer(
    companyName: "Aifrance",
    title: "Chef de Projet IT",
    description: "Dirigez des projets informatiques de grande envergure.",
    companyLogoUrl: "logoGoogle.png",
    startDate: DateTime(2023, 10, 30),
    endDate: DateTime(2024, 03, 30),
    imagePath: "ChefProjetItJobImage.jpg",
  ),
  JobOffer(
    companyName: "Afriland First Bank",
    title: "Responsable Marketing Digital",
    description: "Gérez notre présence en ligne et nos campagnes digitales.",
    companyLogoUrl: "LogoAfriland.jpg",
    startDate: DateTime(2023, 10, 25),
    endDate: DateTime(2024, 12, 25),
    imagePath: "ResponsableMarketingJobImage.jpg",
  ),
  JobOffer(
    companyName: "Nextel",
    title: "Technicien en Support Informatique",
    description: "Fournissez un support technique aux utilisateurs.",
    companyLogoUrl: "LogoNextel.png",
    startDate: DateTime(2023, 11, 5),
    endDate: DateTime(2024, 12, 05),
    imagePath: "TechnicienSupportJobImage.jpg",
  ),
];
