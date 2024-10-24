String getTimeRemaining(DateTime endDate) {
  final now = DateTime.now();
  final difference = endDate.difference(now);

  if (difference.isNegative) {
    return 'Expiré'; // L'offre est expirée
  } else {
    final months = (difference.inDays / 30).floor();
    final days = difference.inDays % 30;
    final hours = difference.inHours % 24;

    if (months > 0) {
      return '$months mois, $days jours restantes';
    } else {
      return '$days jours, $hours heures restantes';
    }
  }
}
