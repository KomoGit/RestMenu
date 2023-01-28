import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  final String title;
  final String imgUrl;
  const CategoryView({required this.title, required this.imgUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(imgUrl),
      ],
    );
  }
}