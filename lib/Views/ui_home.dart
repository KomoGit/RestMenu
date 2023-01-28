import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:restmenu/Logic/API/api_category.dart';
import 'package:restmenu/Logic/API/api_menu.dart';
import 'package:restmenu/Model/model_category.dart';
import 'package:restmenu/Model/model_menu.dart';
import 'package:restmenu/Views/Widgets/ui_category.dart';

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
  var isLoaded = false;

  //Remember these two important pieces of code!
  @override
  void initState() {
    //And this!
    super.initState();

    //Fetching data from API.
    getData();
  }

  //THIS v

  getData() async {
    category = await CategoryAPI().fromRecordsToModels(pb);
    menuItem = await MenuAPI().fromRecordsToModels(pb);
    if (category!.isNotEmpty) {
      setState(() {
        categoryLength = category!.length;
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
        ),
        child: ListView.builder(
            itemCount: categoryLength,
            itemBuilder: (context, index) {
              return CategoryView(
                title: category![index].title,
                imgUrl: category![index].imgUrl,
              );
            }),
      ),
    );
  }
}
