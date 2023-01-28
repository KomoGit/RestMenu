import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
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
                title: Text(
                  title,
                  style: GoogleFonts.montserrat(),
                ),
                subtitle: Text(
                  price.toString(),
                  style: GoogleFonts.montserrat(color: Colors.yellow),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
