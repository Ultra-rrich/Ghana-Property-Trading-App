
import 'package:gpt_app/model_new/app_model.dart';
import 'package:intl/intl.dart';
    final value = NumberFormat.currency();



final buyHouse1 = House(
  kitchen: '2',
  agentPhoto: 'images/house1.jpg',
  propertyName: 'Villageo',
  imagePath: 'images/house4.jpg',
  address: 'Porcupine St, Adenta (GD-282-4288)',
  description:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  price: 351000.00,
  bedRooms: 4,
  bathRooms: 2,
  garages: 2,
  sqFeet: 1.416,
  time: 20,
  isFav: false,
  moreImagesPath: [
    'images/house1.jpg',
    'images/indoor1.jpg',
    'images/indoor2.jpg',
    'images/indoor3.jpg',
    'images/indoor4.jpg',
    'images/indoor5.jpg',
  ],
);

final buyHouse2 = House(
  kitchen: '2',
    agentPhoto: 'images/house2.jpg',
    propertyName: 'Beverly Heights',
    imagePath: 'images/house3.jpg',
    address: '131 Sunflower Ave., LakeSide',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 430000.00,
    bedRooms: 4,
    bathRooms: 2,
    garages: 1,
    sqFeet: 1.416,
    time: 30,
    isFav: false,
    moreImagesPath: [
      'images/house2.jpg',
      'images/indoor1.jpg',
      'images/indoor2.jpg',
      'images/indoor3.jpg',
      'images/indoor4.jpg',
      'images/indoor5.jpg',
    ]);

final buyHouse3 = House(
  kitchen: '2',
    agentPhoto: 'images/house3.jpg',
    propertyName: 'Roger Moore',
    imagePath: 'images/house3.jpg',
    address: '54, Hollys St, Achimota',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 210000.00,
    bedRooms: 5,
    bathRooms: 3,
    garages: 1,
    sqFeet: 1.700,
    time: 30,
    isFav: false,
    moreImagesPath: [
      'images/house3.jpg',
      'images/indoor1.jpg',
      'images/indoor2.jpg',
      'images/indoor3.jpg',
      'images/indoor4.jpg',
      'images/indoor5.jpg',
    ]);

final buyHouse4 = House(
  kitchen: '2',
    agentPhoto: 'images/house4.jpg',
    propertyName: 'Serenity Court',
    imagePath: 'images/house5.jpg',
    address: 'Nkrumah Crescent (AS-514-4789)',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 170000.00,
    bedRooms: 2,
    bathRooms: 1,
    garages: 1,
    sqFeet: 1.210,
    time: 30,
    isFav: false,
    moreImagesPath: [
      'images/house4.jpg',
      'images/indoor1.jpg',
      'images/indoor2.jpg',
      'images/indoor3.jpg',
      'images/indoor4.jpg',
      'images/indoor5.jpg',
    ]);

final buyHouse5 = House(
  kitchen: '2',
    agentPhoto: 'images/house3.jpg',
    propertyName: 'The Heavens',
    imagePath: 'images/house1.jpg',
    address: 'Palm Ave, Lapaz, GD-321-5632',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 230000.00,
    bedRooms: 3,
    bathRooms: 1,
    garages: 1,
    sqFeet: 1.42,
    time: 240,
    isFav: false,
    moreImagesPath: [
      'images/house5.jpg',
      'images/indoor1.jpg',
      'images/indoor2.jpg',
      'images/indoor3.jpg',
      'images/indoor4.jpg',
      'images/indoor5.jpg',
    ]);

final List<House> buyHouseList = [
  buyHouse1,
  buyHouse2,
  buyHouse3,
  buyHouse4,
  buyHouse5,
];
