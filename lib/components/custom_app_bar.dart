import 'package:flutter/material.dart';
import '../constants/constants_spaces.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding / 1.5,
        right: appPadding / 1.5,
        top: appPadding * 1.5,
      ),
      // ignore: sized_box_for_whitespace
      child: Container(
        height: size.height * .19,
        // color: black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Yo!',
              style: TextStyle(
                fontSize: 20,
                color: black.withOpacity(.7),
                fontWeight: FontWeight.w600
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Kwame',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: green.withOpacity(.5),
                    ),
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage('images/hollys.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            heightSpace24,
            //this is the row for side menu and filter widgets
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: size.width / 1.32,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: black.withOpacity(.4),
                    ),
                    color: darkBlue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    cursorColor: white,
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: white, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      
                      prefixIcon: const Padding(
                        padding: EdgeInsetsDirectional.only(start: 12.0),
                        child: Icon(
                          Icons.search_rounded,
                          color: green,
                        ),
                      ),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: green, width: 2)
                          ),
                      contentPadding: const EdgeInsets.symmetric(
                        // vertical: appPadding,
                        horizontal: appPadding / 2,
                      ),
                      alignLabelWithHint: true,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      focusColor: green,
                      hintText: 'Search by Region, price...',
                      hintStyle:
                          TextStyle(color: white.withOpacity(.4), fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: black.withOpacity(.4),
                    ),
                    color: darkBlue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(
                    Icons.sort_rounded,
                    color: green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
