import 'package:flutter/material.dart';

class MenuView extends StatelessWidget {
  final String title;
  final String desc;
  final String imgUrl;
  final String category;
  final double price;

  const MenuView(
      {required this.title,
      required this.desc,
      required this.category,
      required this.imgUrl,
      required this.price,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
