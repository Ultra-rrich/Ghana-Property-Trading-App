import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatefulWidget {
  final List<String> imagesListPath;

  const CarouselImages(this.imagesListPath, {super.key});

  @override
  State<CarouselImages> createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.35,
      child: AnotherCarousel(
        boxFit: BoxFit.cover,
        animationCurve: Curves.linear,
        // animationCurve: Curves.easeIn,

        animationDuration: const Duration(seconds: 10),
        defaultImage: 5,
        // autoplay: false,
        showIndicator: false,
        images: [
          AssetImage(widget.imagesListPath[0]),
          AssetImage(widget.imagesListPath[1]),
          AssetImage(widget.imagesListPath[2]),
          AssetImage(widget.imagesListPath[3]),
          AssetImage(widget.imagesListPath[4]),
          AssetImage(widget.imagesListPath[5]),
        ],
      ),
    );
  }
}
