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
  final DateTime startDate; 
  final DateTime endDate;   

  JobOffer({
    required this.companyName,
    required this.title,
    required this.companyLogoUrl,
    required this.startDate,
    required this.endDate,
  });
}

List<JobOffer> jobOffers = [
  JobOffer(
    companyName: "Tech Solutions Inc.",
    title: "Développeur Web",
    companyLogoUrl: "https://example.com/logo1.png",
    startDate: DateTime(2023, 10, 1),
    endDate: DateTime(2023, 11, 30),
  ),
  JobOffer(
    companyName: "HR Innovations",
    title: "Assistant RH",
    companyLogoUrl: "https://example.com/logo2.png",
    startDate: DateTime(2023, 10, 5),
    endDate: DateTime(2023, 12, 5),
  ),
  JobOffer(
    companyName: "Digital Marketing Group",
    title: "Marketing Digital",
    companyLogoUrl: "https://example.com/logo3.png",
    startDate: DateTime(2023, 10, 10),
    endDate: DateTime(2024, 01, 10),
  ),
  JobOffer(
    companyName: "SecureTech",
    title: "Expert en Cybersécurité",
    companyLogoUrl: "https://example.com/logo4.png",
    startDate: DateTime(2023, 10, 15),
    endDate: DateTime(2024, 02, 15),
  ),
  JobOffer(
    companyName: "Code Masters",
    title: "Développeur Python",
    companyLogoUrl: "https://example.com/logo5.png",
    startDate: DateTime(2023, 10, 20),
    endDate: DateTime(2024, 03, 20),
  ),
  JobOffer(
    companyName: "Orange Cameroun",
    title: "Ingénieur Réseau",
    companyLogoUrl: "https://example.com/logo_orange.png",
    startDate: DateTime(2023, 11, 1),
    endDate: DateTime(2024, 01, 31),
  ),
  JobOffer(
    companyName: "Google",
    title: "Développeur d'Applications Mobiles",
    companyLogoUrl: "https://example.com/logo_google.png",
    startDate: DateTime(2023, 11, 10),
    endDate: DateTime(2024, 02, 10),
  ),
  JobOffer(
    companyName: "UBA Cameroun",
    title: "Analyste de Données",
    companyLogoUrl: "https://example.com/logo_uba.png",
    startDate: DateTime(2023, 10, 15),
    endDate: DateTime(2024, 03, 15),
  ),
  JobOffer(
    companyName: "Afriland First Bank",
    title: "Responsable Marketing Digital",
    companyLogoUrl: "https://example.com/logo_afriland.png",
    startDate: DateTime(2023, 10, 25),
    endDate: DateTime(2024, 01, 25),
  ),
  JobOffer(
    companyName: "Nextel",
    title: "Technicien en Support Informatique",
    companyLogoUrl: "https://example.com/logo_nextel.png",
    startDate: DateTime(2023, 11, 5),
    endDate: DateTime(2024, 02, 05),
  ),
  JobOffer(
    companyName: "Aifrance",
    title: "Chef de Projet IT",
    companyLogoUrl: "https://example.com/logo_aifrance.png",
    startDate: DateTime(2023, 10, 30),
    endDate: DateTime(2024, 03, 30),
  ),
];


