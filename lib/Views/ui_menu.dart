import 'package:flutter/material.dart';
import 'package:restmenu/Logic/API/api_category.dart';
import 'package:restmenu/Logic/API/api_menu.dart';
import 'package:restmenu/Logic/Debug/de_logger.dart';
import 'package:restmenu/Model/model_category.dart';
import 'package:restmenu/Model/model_menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Category>? cat;
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
    cat = await CategoryAPI().fromRecordsToModels();
    menuItem = await MenuAPI().fromRecordsToModels();
    if (cat!.isNotEmpty) {
      setState(() {
        categoryLength = cat!.length;
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
              return Center(
                  child: Text(cat != null
                      ? cat![index].title
                      : "Warning, null value!"));
            }),
      ),
    );
  }
}
