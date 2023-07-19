class Property {
  final String name;
  final String address;
  final double rating;
  final int area;
  final String price;
  final String? leasePeriod;
  final bool isFav;
  const Property({
    required this.name,
    required this.address,
    required this.rating,
    required this.area,
    required this.price,
    this.leasePeriod,
    required this.isFav,
  });
}
