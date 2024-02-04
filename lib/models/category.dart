import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final String imgUrl;
  final VoidCallback onTap;

  Category(
      {required this.id,
      required this.title,
      required this.imgUrl,
      required this.onTap});
}

List<Category> dummyCategories = [
  Category(
    id: "1",
    title: "Regular",
    imgUrl:'assets/images/donutpink.png',
    onTap: () {},
  ),
  Category(
    id: "2",
    title: "Drinks",
    imgUrl:'assets/images/drinks.png',
    onTap: () {},
  ),
  Category(
    id: "3",
    title: "Minnie's",
    imgUrl:'assets/images/minnies.png',
    onTap: () {},
  ),Category(
    id: "4",
    title: "Gift Box",
    imgUrl:'assets/images/gift box.png',
    onTap: () {},
  ),Category(
    id: "5",
    title: "customized",
    imgUrl:'assets/images/customized.png',
    onTap: () {},
  ),
];