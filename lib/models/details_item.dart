class DetailsItem {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String acheivement;

  DetailsItem(
      {required this.imageUrl,
        required this.title,
        required this.subtitle,
        required this.acheivement});

  // Constructor for assets
  DetailsItem.asset(
      {required this.imageUrl,
        required this.title,
        required this.subtitle,
        required this.acheivement});
}