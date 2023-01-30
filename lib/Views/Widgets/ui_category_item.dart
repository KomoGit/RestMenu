import 'package:flutter/material.dart';
import 'package:restmenu/Model/model_menu.dart';

/*Filtering is what we have left for this part of the project. 
Once that is done we only need to implement a button and we are golden*/
//TODO: IMPLEMENT - If category is empty, do not generate.
class CategoryView extends StatelessWidget {
  final List<MenuItem> menuItem;
  final int index;
  final String title;
  final String imgUrl;
  const CategoryView(
      {required this.title,
      required this.index,
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
            width: 50,
            height: 50,
            child: Center(
                child: Image.network(
              filterQuality: FilterQuality.high,
              imgUrl,
              isAntiAlias: true,
            ))),
        const Padding(padding: EdgeInsets.all(10)),
        ExpansionTile(title: Text(title), children: [
          const Padding(
            padding: EdgeInsets.all(5),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 600,
            child: ListView.builder(
                itemCount: menuItem.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Text(menuItem[index].title),
                  );
                }),
          ),
        ]),
      ],
    );
  }
}
