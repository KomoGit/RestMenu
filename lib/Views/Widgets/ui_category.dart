import 'package:flutter/material.dart';
import 'package:restmenu/Model/model_menu.dart';
import 'package:restmenu/Views/Widgets/ui_menu.dart';

class CategoryView extends StatelessWidget {
  final List<MenuItem> menuItem;
  final String title;
  final String imgUrl;
  const CategoryView(
      {required this.title,
      required this.imgUrl,
      required this.menuItem,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.all(10)),
        //Image has anti-alliasing issues.
        SizedBox(
          width: 35,
          height: 35,
          child: Center(child: Image.network(imgUrl)),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        ExpansionTile(
          title: Text(title),
          children: [
            ListView.builder(
                itemCount: menuItem.length,
                itemBuilder: (context, index) {
                  /*MenuView(
                      title: menuItem[index].title,
                      desc: menuItem[index].desc,
                      category: menuItem[index].category,
                      imgUrl: menuItem[index].imgUrl,
                      price: menuItem[index].price);*/
                })
          ],
        ),
      ],
    );
  }
}
