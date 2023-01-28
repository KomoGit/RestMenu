import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryView extends StatelessWidget {
  final String title;
  final String imgUrl;
  const CategoryView({required this.title, required this.imgUrl, super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.black,
    // );
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, //was .stretch
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
              child: Image.network(imgUrl,
                  width: 300, height: 150, fit: BoxFit.fill),
            ),
            ListTile(
              title: Center(
                child: Text(
                  title,
                  style: GoogleFonts.montserrat(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
