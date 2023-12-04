class GridItem {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String college_numbers ;

  GridItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.college_numbers
  });

  GridItem.asset({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.college_numbers,
  });
}
