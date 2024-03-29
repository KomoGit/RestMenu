import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:restmenu/Logic/Controller/category_controller.dart';
import 'package:restmenu/Logic/Controller/menu_controller.dart';
import 'package:restmenu/Model/model_category.dart';
import 'package:restmenu/Model/model_menu.dart';
import 'package:restmenu/Views/Widgets/ui_category_item.dart';
import 'package:restmenu/Logic/menu_filter.dart';

PocketBase pb = PocketBase("http://127.0.0.1:8090");

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Category>? category;
  List<MenuItem>? menuItem;
  int? categoryLength;
  int? menuLength;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    category = await CategoryAPI().fromRecordsToModels(pb);
    menuItem = await MenuAPI().fromRecordsToModels(
        pb); //Note to self, adding a filteredList of items here is useless unless you wish to hard code it.
    if (category!.isNotEmpty) {
      setState(() {
        categoryLength = category!
            .length; //For some reason just adding category length to listview causes the entire system to `ef` up
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Pocket Menu")),
        body: Visibility(
          visible: isLoaded,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ), //TODO: Create a Row that will house menu items and categories.
          child: Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                color: Colors.grey,
                height: double.infinity,
                width: 150,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CategoryView(
                        index: index,
                        menuItem: Filter.filteredItems(
                            menuItem!, category![index].id),
                        title: category![index].title,
                        imgUrl: category![index].imgUrl,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: categoryLength!),
              ),
            ],
          ),
        ));
  }
}
