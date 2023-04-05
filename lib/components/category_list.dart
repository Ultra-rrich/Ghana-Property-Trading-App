// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:gpt_app/constants/data.dart';
import 'category_item.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;

  List<String> categories = ['Rent', 'Buy', 'Shared'];

  

  void _onItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              categories.length,
              (index) => CategoryItem(
                title: categoryList[index],
                isSelected: selectedIndex == index,
                onSelected: () => _onItemSelected(index),
              ),
            ),
          ),
               properties[selectedIndex],

        ],
      ),
    );
  }
}
