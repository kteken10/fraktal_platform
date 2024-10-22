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

// Liste des offres d'emploi
List<JobOffer> jobOffers = [
   JobOffer(
    companyName: "SecureTech",
    title: "Expert en Cybersécurité",
    companyLogoUrl: "LogoNextel.png", // Remplacez par le chemin correct
    startDate: DateTime(2023, 10, 15),
    endDate: DateTime(2024, 02, 15),
    imagePath: "assets/jobs/cybersecurite.png",
  ),
   JobOffer(
    companyName: "Code Masters",
    title: "Développeur Python",
    companyLogoUrl: "LogoOrange.png", // Remplacez par le chemin correct
    startDate: DateTime(2023, 10, 20),
    endDate: DateTime(2024, 03, 20),
    imagePath: "assets/jobs/developpeur_python.png",
  ),
  JobOffer(
    companyName: "HR Innovations",
    title: "Assistant RH",
    companyLogoUrl: "LogoAirFrance.png", // Remplacez par le chemin correct
    startDate: DateTime(2023, 10, 5),
    endDate: DateTime(2023, 12, 5),
    imagePath: "assets/jobs/assistant_rh.png",
  ),
  JobOffer(
    companyName: "Digital Marketing Group",
    title: "Marketing Digital",
    companyLogoUrl: "logoGoogle.png", // Remplacez par le chemin correct
    startDate: DateTime(2023, 10, 10),
    endDate: DateTime(2024, 01, 10),
    imagePath: "assets/jobs/marketing_digital.png",
  ),


 
 
  JobOffer(
    companyName: "Orange Cameroun",
    title: "Ingénieur Réseau",
    companyLogoUrl: "LogoOrange.png", // Remplacez par le chemin correct
    startDate: DateTime(2023, 11, 1),
    endDate: DateTime(2024, 01, 31),
    imagePath: "assets/jobs/ingenieur_reseau.png",
  ),
  JobOffer(
    companyName: "Google",
    title: "Développeur d'Applications Mobiles",
    companyLogoUrl: "logoGoogle.png", // Remplacez par le chemin correct
    startDate: DateTime(2023, 11, 10),
    endDate: DateTime(2024, 02, 10),
    imagePath: "assets/jobs/developpeur_mobile.png",
  ),
  JobOffer(
    companyName: "UBA Cameroun",
    title: "Analyste de Données",
    companyLogoUrl: "logoUba.jpg", // Remplacez par le chemin correct
    startDate: DateTime(2023, 10, 15),
    endDate: DateTime(2024, 03, 15),
    imagePath: "assets/jobs/analyste_donnees.png",
  ),
  JobOffer(
    companyName: "Aifrance",
    title: "Chef de Projet IT",
    companyLogoUrl: "logoGoogle.png", // Remplacez par le chemin correct
    startDate: DateTime(2023, 10, 30),
    endDate: DateTime(2024, 03, 30),
    imagePath: "assets/jobs/chef_projet.png",
  ),
  JobOffer(
    companyName: "Afriland First Bank",
    title: "Responsable Marketing Digital",
    companyLogoUrl: "LogoAfriland.jpg", // Remplacez par le chemin correct
    startDate: DateTime(2023, 10, 25),
    endDate: DateTime(2024, 01, 25),
    imagePath: "assets/jobs/responsable_marketing.png",
  ),
  JobOffer(
    companyName: "Nextel",
    title: "Technicien en Support Informatique",
    companyLogoUrl: "LogoNextel.png", // Remplacez par le chemin correct
    startDate: DateTime(2023, 11, 5),
    endDate: DateTime(2024, 02, 05),
    imagePath: "assets/jobs/technicien_support.png",
  ),
  
 
 
  
];

