import 'package:flutter/material.dart';
import 'package:gpt_app/constants/constants_spaces.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onSelected;

  const CategoryItem({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onSelected,
      child: Padding(
        padding: const EdgeInsets.only(right: appPadding / 3),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: appPadding / 2),
          width: size.width * .25,
          height: size.height,
          decoration: BoxDecoration(
            color: isSelected ? darkBlue : black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                // fontWeight: FontWeight.w500,
                fontSize: 16,
                color: isSelected ? green : black.withOpacity(.8),
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
