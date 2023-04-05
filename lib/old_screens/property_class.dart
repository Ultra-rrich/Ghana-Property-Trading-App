class Property {
  final String id;
  final String name;
  final String type;
  final String subType;
  final String location;
  final String imageUrl;
  final int price;
  final int bedrooms;
  final int bathrooms;
  final int parkingSpaces;
  final bool hasTap;
  final bool hasAC;
  final bool hasQuarters;
  final String description;

  //house number, GPS ADDRESS, house colors, street name, 

  Property( {
    required this.id,
    required this.type,
    required this.subType,
    required this.location,
    required this.imageUrl,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
    required this.name,
    required this.parkingSpaces,
    required this.hasTap,
    required this.hasAC,
    required this.hasQuarters,
    required this.description,
  });
}
