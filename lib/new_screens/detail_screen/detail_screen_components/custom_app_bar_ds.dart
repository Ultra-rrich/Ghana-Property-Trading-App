import 'package:flutter/material.dart';
import 'package:gpt_app/constants/constants_spaces.dart';

class CustomApBarDetailsScreen extends StatelessWidget {
  const CustomApBarDetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding/2,
        right: appPadding/2,
        top: appPadding/2,
      ),
      // ignore: sized_box_for_whitespace
      child: Container(
        height: size.height * .1,
        // color: black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: white,
                size: 27,
              ),
            ),
            const Icon(
              Icons.more_vert_rounded,
              color: white,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
