import 'package:flutter/material.dart';
import 'package:gpt_app/category_pages/buy_category_items/buy_category_items.dart';
import 'package:gpt_app/category_pages/category_items/rent_components/rent_category_items.dart';
import 'package:gpt_app/components/houses.dart';
import 'package:gpt_app/model_new/app_model.dart';

final _house1 = House(
  kitchen: '2',
  agentPhoto: 'images/house1.jpg',
  propertyName: 'Hill De Eco',
  imagePath: 'images/house1.jpg',
  address: 'Janison, MI 49428,SF',
  description:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  price: 200.00,
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

final _house2 = House(
    kitchen: '2',
    agentPhoto: 'images/house1.jpg',
    propertyName: 'Tantra Hills',
    imagePath: 'images/house2.jpg',
    address: '131, Sunflower Ave. LakeSide',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 140.00,
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

final _house3 = House(
    kitchen: '1',
    agentPhoto: 'images/house1.jpg',
    propertyName: 'Trassaco Vallie',
    imagePath: 'images/house3.jpg',
    address: 'E354, Henrywood St, East Legon',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 210.00,
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

final _house4 = House(
    kitchen: '2',
    agentPhoto: 'images/house1.jpg',
    propertyName: 'The Greens',
    imagePath: 'images/house4.jpg',
    address: 'Manison, MI 49526,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 170.00,
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

final _house5 = House(
    kitchen: '1',
    agentPhoto: 'images/house1.jpg',
    propertyName: 'Redwood Meadows',
    imagePath: 'images/house5.jpg',
    address: 'BackStreet, MI 49526,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 150.00,
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

final List<House> houseList = [
  _house2,
  _house1,
  _house3,
  _house4,
  _house5,
];

List<String> categoryList = [
  'All',
  'Rent',
  'Buy',
  'Invest',
  'ShortStay',
  'Shared'
];

List<Widget> properties = [
  const Houses(),
  const RentHouses(),
  const BuyHouses(),
  const Houses(),
  const Houses(),
  const Houses(),
];
