import 'package:flutter/material.dart';
import 'package:gpt_app/constants/constants_spaces.dart';

class BottomButtonsDs extends StatelessWidget {
  const BottomButtonsDs({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
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
                Icons.message,
                color: green,
                size: 25,
              ),
              widthSpace4,
              Text(
                'Message',
                style: TextStyle(
                    color: green, fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ],
          ),
        ),
        Container(
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
                Icons.call,
                color: green,
                size: 25,
              ),
              widthSpace4,
              Text(
                'Call',
                style: TextStyle(
                    color: green, fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
