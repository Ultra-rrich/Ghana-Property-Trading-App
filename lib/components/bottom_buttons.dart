import 'package:flutter/material.dart';
import 'package:gpt_app/constants/constants_spaces.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .4,
      height: 55,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: darkBlue,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              offset: const Offset(0, 7.5),
              color: darkBlue.withOpacity(.3),
              spreadRadius: .9),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.map_rounded,
            color: green,
            size: 25,
          ),
          widthSpace4,
          Text(
            'Map view',
            style: TextStyle(
                color: green, fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
