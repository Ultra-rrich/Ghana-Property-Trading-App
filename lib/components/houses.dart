import 'package:flutter/material.dart';
import 'package:gpt_app/new_screens/detail_screen/details_screen.dart';
import '../constants/constants_spaces.dart';
import '../constants/data.dart';
import '../model_new/app_model.dart';

class Houses extends StatefulWidget {
  const Houses({Key? key, }) : super(key: key);

  @override
  State<Houses> createState() => _HousesState();
}

void popUpMenu(BuildContext context) {
  showMenu<String>(
    color: white.withOpacity(.975),
    context: context,
    position: RelativeRect.fill,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      // side: BorderSide(width: 2)
    ),
    items: [
      PopupMenuItem<String>(
        value: 'Share',
        child: Row(
          children: const [
            Icon(
              Icons.share_rounded,
              size: 15,
              color: green,
            ),
            SizedBox(width: 10),
            Text('Share'),
          ],
        ),
      ),
      const PopupMenuDivider(),
      PopupMenuItem<String>(
        value: 'More details',
        child: Row(
          children: const [
            Icon(
              Icons.details,
              size: 15,
              color: green,
            ),
            SizedBox(
              width: 10,
            ),
            Text('More details'),
          ],
        ),
      ),
      const PopupMenuDivider(),
      PopupMenuItem<String>(
        value: 'Report',
        child: Row(
          children: const [
            Icon(
              Icons.report,
              size: 15,
              color: green,
            ),
            SizedBox(width: 10),
            Text('Report'),
          ],
        ),
      ),
    ],
  );
}

class _HousesState extends State<Houses> {
  Widget _buildContext(BuildContext context, int index) {
    House house = houseList[index];
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailsScreen(house: house),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: appPadding / 2,
          left: appPadding / 2,
          // top: appPadding / 4,
          bottom: appPadding / 2,
        ),
        child: Container(
          height: 320,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(2, 1),
                  color: black.withOpacity(.1),
                  spreadRadius: .2),
            ],
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(7.5),
                      bottomRight: Radius.circular(1.5),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image(
                      width: size.width,
                      fit: BoxFit.cover,
                      height: 150,
                      image: AssetImage(
                        house.imagePath,
                      ),
                    ),
                  ),
                  Positioned(
                    right: size.width/10,
                    top: 30,
                    child: Container(
                      // margin: const EdgeInsets.only(left: 250, top: 20),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                  
                        // shape: BoxShape.circle,
                        color: white.withOpacity(.75),
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            house.isFav = !house.isFav;
                            // return;
                          });
                        },
                        icon: house.isFav
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: red,
                              )
                            : const Icon(
                                Icons.favorite_border_rounded,
                                color: darkBlue,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
              heightSpace8,
              Padding(
                padding: const EdgeInsets.only(
                  left: appPadding / 2,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //this where we introduce the property name
                    Text(
                      house.propertyName,
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    heightSpace4,
                    //This is where we introduce the text for the location and its icon
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: black.withOpacity(.3),
                          size: 15,
                        ),
                        widthSpace4,
                        Text(
                          overflow: TextOverflow.ellipsis,
                          house.address,
                          style: TextStyle(
                              fontSize: 15, color: black.withOpacity(.4)
                              // fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.bed_rounded,
                          color: darkGreen,
                          size: 30,
                        ),
                        widthSpace8,
                        Text(
                          '${house.bedRooms}     |     ',
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 15),
                        ),
                        const Icon(
                          Icons.shower_rounded,
                          color: darkGreen,
                          size: 30,
                        ),
                        widthSpace4,
                        Text(
                          '${house.bathRooms}     |     ',
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 15),
                        ),
                        const Icon(
                          Icons.square_foot_rounded,
                          color: darkGreen,
                          size: 28,
                        ),
                        widthSpace4,
                        Text(
                          '${house.sqFeet} Sqft',
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    //this is the container widget housing the price of the property
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 150,
                          padding: const EdgeInsets.symmetric(
                              horizontal: appPadding / 5,
                              vertical: appPadding / 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 11,
                                  offset: const Offset(2, 2),
                                  color: green.withOpacity(.5),
                                  spreadRadius: 2),
                            ],
                            color: green,
                          ),
                          child: Text(
                            'Ghc${house.price.toStringAsFixed(2)}/mo',
                            style: const TextStyle(
                              fontSize: 18,
                              color: white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      //   const SizedBox(width: 90),
                      //  CircleAvatar(
                      //   foregroundImage: AssetImage(house.agentPhoto),
                      //   radius: 9,
                      //  ),
                        //This is the more menu icon which calls the popUpMenu function.
                        IconButton(
                          onPressed: () {
                            setState(() {
                              return popUpMenu(context);
                            });
                          },
                          icon: const Icon(
                            Icons.more_vert_rounded,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

// this is the build method for the houses.
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: houseList.length,
        itemBuilder: (context, index) {
          return _buildContext(context, index);
        },
      ),
    );
  }
}
