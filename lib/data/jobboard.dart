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
  final String companyLogoUrl; // Changement pour correspondre à votre code
  final String title;
  final DateTime startDate; 
  final DateTime endDate;   
  final String imagePath; 

  JobOffer({
    required this.companyName,
    required this.title,
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
    companyLogoUrl: "LogoNextel.png",
    startDate: DateTime(2023, 10, 15),
    endDate: DateTime(2024, 11, 15),
    imagePath: "ExpertCyberSecuriteJobImage.jpg", // Mis à jour
  ),
  JobOffer(
    companyName: "Code Masters",
    title: "Développeur Python",
    companyLogoUrl: "LogoOrange.png",
    startDate: DateTime(2023, 10, 20),
    endDate: DateTime(2024, 11, 20),
    imagePath: "PythonDeveloperJobImage.jpg", // Mis à jour
  ),
  JobOffer(
    companyName: "HR Innovations",
    title: "Assistant RH",
    companyLogoUrl: "LogoAirFrance.png",
    startDate: DateTime(2023, 10, 5),
    endDate: DateTime(2023, 11, 5),
    imagePath: "AssistantRhJobImage.jpg", // Non disponible
  ),
  JobOffer(
    companyName: "Digital Marketing Group",
    title: "Marketing Digital",
    companyLogoUrl: "logoGoogle.png",
    startDate: DateTime(2023, 10, 10),
    endDate: DateTime(2024, 12, 10),
    imagePath: "MarKetingDigitalJobImage.jpg", // Mis à jour
  ),
  JobOffer(
    companyName: "Orange Cameroun",
    title: "Ingénieur Réseau",
    companyLogoUrl: "LogoOrange.png",
    startDate: DateTime(2023, 11, 1),
    endDate: DateTime(2024, 12, 31),
    imagePath: "IngenieurReseauJobImage.jpg", // Mis à jour
  ),
  JobOffer(
    companyName: "Google",
    title: "Développeur d'Applications Mobiles",
    companyLogoUrl: "logoGoogle.png",
    startDate: DateTime(2023, 11, 10),
    endDate: DateTime(2024, 11, 10),
    imagePath: "MobileDeveloperJobImage.jpg", // Mis à jour
  ),
  JobOffer(
    companyName: "UBA Cameroun",
    title: "Analyste de Données",
    companyLogoUrl: "logoUba.jpg",
    startDate: DateTime(2023, 10, 15),
    endDate: DateTime(2024, 11, 15),
    imagePath: "AnalyseDonneJobImage.jpg", // Mis à jour
  ),
  JobOffer(
    companyName: "Aifrance",
    title: "Chef de Projet IT",
    companyLogoUrl: "logoGoogle.png",
    startDate: DateTime(2023, 10, 30),
    endDate: DateTime(2024, 03, 30),
    imagePath: "ChefProjetItJobImage.jpg", // Mis à jour
  ),
  JobOffer(
    companyName: "Afriland First Bank",
    title: "Responsable Marketing Digital",
    companyLogoUrl: "LogoAfriland.jpg",
    startDate: DateTime(2023, 10, 25),
    endDate: DateTime(2024, 12, 25),
    imagePath: "ResponsableMarketingJobImage.jpg", // Mis à jour
  ),
  JobOffer(
    companyName: "Nextel",
    title: "Technicien en Support Informatique",
    companyLogoUrl: "LogoNextel.png",
    startDate: DateTime(2023, 11, 5),
    endDate: DateTime(2024, 12, 05),
    imagePath: "TechnicienSupportJobImage.jpg", // Non disponible
  ),
];
