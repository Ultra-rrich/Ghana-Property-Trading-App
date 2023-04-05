import 'package:flutter/material.dart';
import 'package:gpt_app/constants/constants_spaces.dart';
import 'package:gpt_app/model_new/app_model.dart';

class MoreHouseDetails extends StatefulWidget {
  final House house;

  const MoreHouseDetails(this.house, {super.key});

  @override
  State<MoreHouseDetails> createState() => _MoreHouseDetailsState();
}

class _MoreHouseDetailsState extends State<MoreHouseDetails> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 500,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: appPadding / 2,
              right: appPadding / 2,
              bottom: appPadding / 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //Price widget
                      'Ghc${widget.house.price.toStringAsFixed(2)}/mo',
                      style: const TextStyle(
                        fontSize: 25,
                        color: black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    heightSpace8,
                    Text(
                      //location text
                      overflow: TextOverflow.ellipsis,
                      widget.house.address,
                      style: TextStyle(
                        fontSize: 16,
                        color: black.withOpacity(.4),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      //time posted
                      overflow: TextOverflow.ellipsis,
                      '${widget.house.time} Hours ago',
                      style: const TextStyle(
                        fontSize: 16,
                        color: black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    heightSpace16
                  ],
                ),
              ],
            ),
          ),
          const Divider(thickness: .75),
          heightSpace8,
          const Padding(
            padding: EdgeInsets.only(
              left: appPadding / 2,
              right: appPadding / 2,
              bottom: appPadding / 1.5,
            ),
            child: Text(
              //house info text
              overflow: TextOverflow.ellipsis,
              'House Information',
              style: TextStyle(
                fontSize: 18,
                color: black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              children: [
                //Square foot container
                Padding(
                  padding: const EdgeInsets.only(
                    left: appPadding / 2,
                    bottom: appPadding / 2,
                  ),
                  child: Container(
                    width: 90,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        // width: 2,
                        color: black.withOpacity(.6),
                      ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.house.sqFeet.toString(),
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Square Foot',
                            style: TextStyle(
                              fontSize: 15,
                              color: black.withOpacity(.75),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Icon(
                            Icons.square_foot_rounded,
                            color: green,
                            size: 30,
                          ),
                        ]),
                  ),
                ),
                //bedrooms container
                Padding(
                  padding: const EdgeInsets.only(
                    left: appPadding / 2,
                    bottom: appPadding / 2,
                  ),
                  child: Container(
                    width: 90,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        // width: 2,
                        color: black.withOpacity(.6),
                      ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.house.bathRooms.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                              // color: black.withOpacity(.75),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Bedrooms',
                            style: TextStyle(
                              fontSize: 15,
                                                          color: black.withOpacity(.75),

                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Icon(
                            Icons.bed_rounded,
                            color: green,
                            size: 30,
                          ),
                        ]),
                  ),
                ),
                //bathrooms container
                Padding(
                  padding: const EdgeInsets.only(
                    left: appPadding / 2,
                    bottom: appPadding / 2,
                  ),
                  child: Container(
                    width: 90,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        // width: 2,
                        color: black.withOpacity(.6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.house.bathRooms.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Bathrooms',
                          style: TextStyle(
                            fontSize: 15,
                                                        color: black.withOpacity(.75),

                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(
                          Icons.shower_rounded,
                          color: green,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                //parking container
                Padding(
                  padding: const EdgeInsets.only(
                    left: appPadding / 2,
                    bottom: appPadding / 2,
                  ),
                  child: Container(
                    width: 90,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        // width: 2,
                        color: black.withOpacity(.6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.house.garages.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Parking',
                          style: TextStyle(
                            fontSize: 15,
                            color: black.withOpacity(.75),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Image.asset(
                          'images/car.png',
                          height: 30,
                          color: green,
                        ),
                      ],
                    ),
                  ),
                ),
                //kitchen widget
                Padding(
                  padding: const EdgeInsets.only(
                    left: appPadding / 2,
                    bottom: appPadding / 2,
                  ),
                  child: Container(
                    width: 90,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        // width: 2,
                        color: black.withOpacity(.6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.house.kitchen.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Kitchen',
                          style: TextStyle(
                            fontSize: 15,
                            color: black.withOpacity(.75),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(
                          Icons.soup_kitchen_rounded,
                          color: green,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: appPadding / 2,
              right: appPadding / 2,
              bottom: appPadding * 4,
            ),
            child: Align(
              child: Text(
                widget.house.description,
                style: TextStyle(
                  color: black.withOpacity(.4),
                  height: 1.5,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
