import 'package:flutter/material.dart';
import 'package:gpt_app/model_new/app_model.dart';

import 'detail_screen_components/bottom_buttons.dart';
import 'detail_screen_components/carousel.dart';
import 'detail_screen_components/custom_app_bar_ds.dart';
import 'detail_screen_components/more_details.dart';

class DetailsScreen extends StatefulWidget {
  final House house;

  const DetailsScreen({super.key, required this.house});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Column(
            children: [
              Stack(
                children: [
                  CarouselImages(
                    widget.house.moreImagesPath,
                  ),
                  const CustomApBarDetailsScreen(),
                ],
              ),
              MoreHouseDetails(widget.house)
            ],
          ),
          const BottomButtonsDs(),
        ]),
      ),
    );
  }
}
