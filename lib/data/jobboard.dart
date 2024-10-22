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

  JobOffer({
    required this.companyName,
    required this.title,
    required this.companyLogoUrl,
  });
}
