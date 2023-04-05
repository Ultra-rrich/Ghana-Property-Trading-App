class RentHouse {
  String propertyName;
  String imagePath;
  String agentPhoto;
  String address;
  String description;
  double price;
  int bedRooms;
  int bathRooms;
  double sqFeet;
  int garages;
  int time;
  List<String> moreImagesPath;
  bool isFav;

  RentHouse({
    required this.propertyName,
    required this.imagePath,
    required this.address,
    required this.agentPhoto,
    required this.description,
    required this.price,
    required this.bathRooms,
    required this.bedRooms,
    required this.sqFeet,
    required this.garages,
    required this.time,
    required this.moreImagesPath,
    required this.isFav,
  });
}
