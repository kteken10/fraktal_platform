
import '../data/formations.dart';
import '../data/jobboard.dart';
import 'time_utils.dart';

class ResourceAttributes {
  final String title;
  final String subtitle;
  final String description;
  final String timeRemaining;
  final String price;
  final String imageUrl;
  final String logoPath;

  ResourceAttributes({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.timeRemaining,
    required this.price,
    required this.imageUrl,
    required this.logoPath,
  });
}

ResourceAttributes mapResourceToAttributes(dynamic resource) {
  switch (resource.runtimeType) {
    case Formation:
      return ResourceAttributes(
        title: resource.title,
        subtitle: resource.subtitle,
        description: resource.description,
        timeRemaining: resource.duration,
        price: resource.price,
        imageUrl: resource.imageUrl,
        logoPath: '',
      );
    case JobOffer:
      return ResourceAttributes(
        title: resource.title,
        subtitle: resource.companyName,
        description: resource.description,
        timeRemaining: getTimeRemaining(resource.endDate),
        price: '',
        imageUrl: resource.imageUrl,
        logoPath: resource.companyLogoUrl,
      );
    case Candidate:
      return ResourceAttributes(
        title: '${resource.firstName} ${resource.lastName}',
        subtitle: resource.position,
        description: resource.bio,
        timeRemaining: '',
        price: '',
        imageUrl: resource.pictureUrl,
        logoPath: '',
      );
    case JobDomain:
      return ResourceAttributes(
        title: resource.name,
        subtitle: '',
        description: resource.description,
        timeRemaining: '',
        price: '',
        imageUrl: resource.imageUrl,
        logoPath: '',
      );
    case DomaineFormation:
      return ResourceAttributes(
        title: resource.title,
        subtitle: '',
        description: resource.description,
        timeRemaining: '',
        price: '',
        imageUrl: resource.imageUrl,
        logoPath: '',
      );
    default:
      throw Exception('Type de ressource non reconnu');
  }
}
