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
  final DateTime startDate; // Date de début de l'offre
  final DateTime endDate;   // Date d'échéance de l'offre

  JobOffer({
    required this.companyName,
    required this.title,
    required this.companyLogoUrl,
    required this.startDate,
    required this.endDate,
  });
}

void main() {
  List<JobOffer> jobOffers = [
    JobOffer(
      companyName: "Tech Solutions Inc.",
      title: "Développeur Web",
      companyLogoUrl: "https://example.com/logo1.png",
      startDate: DateTime(2023, 10, 1), // Date de début
      endDate: DateTime(2023, 11, 30),   // Date d'échéance
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
  ];

  
}
