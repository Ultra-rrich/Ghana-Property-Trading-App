// ignore_for_file: unused_local_variable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:gpt_app/components/category_item.dart';
import '../constants/constants_spaces.dart';
import '../constants/data.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedCategoryIndex = 0;

  void _onItemSelected(int index) {
    setState(() {
      selectedCategoryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.05,
          // color: black,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                left: appPadding / 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  categoryList.length,
                  (index) => CategoryItem(
                    title: categoryList[index],
                    isSelected: selectedCategoryIndex == index,
                    onSelected: () => _onItemSelected(index),
                  ),
                ),
              ),
            ),
          ),
        ),
        heightSpace8,
        SizedBox(
          height: size.height / 1.448,
          child: properties[selectedCategoryIndex],
        ),
      ],
    );
  }
}
