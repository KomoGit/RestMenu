import 'package:flutter/material.dart';
import 'package:restmenu/Logic/API/api_category.dart';
import 'package:restmenu/Logic/API/api_menu.dart';
import 'package:restmenu/Model/model_category.dart';
import 'package:restmenu/Model/model_menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Category>? cat;
  List<MenuItem>?
      menu; //It is possible that these two items are null when they are not being called from getData();
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

  //Current issue we are facing right now. The data which is not supposed to be null is coming back to us as null.
  //I have no current understanding as why?
  getData() async {
    final List<Category> cat = await CategoryAPI().fromRecordsToModels();
    final List<MenuItem> item = await MenuAPI().fromRecordsToModels();
    if (cat.isNotEmpty) {
      setState(() {
        categoryLength = cat.length;
        isLoaded = true;
        print(cat[1].title);
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
