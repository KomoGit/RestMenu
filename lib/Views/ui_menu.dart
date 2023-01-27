import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:restmenu/Logic/API/api_category.dart';
import 'package:restmenu/Logic/API/api_menuitems.dart';
import 'package:restmenu/Model/model_category.dart';
import 'package:restmenu/Model/model_menuitems.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? title;
  String? imgUrl;
  int? lengthOfCategory;
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
    final List<Category> cat = await CategoryAPI().fromRecordsToModels();
    final List<MenuItem> item = await MenuAPI().fromRecordsToModels();
    lengthOfCategory = cat.length;
    if (lengthOfCategory != 0) {
      setState(() {
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
            itemCount: lengthOfCategory, //categoryItems?.length,
            itemBuilder: (context, index) {
              return Center(child: Text("Fortnite Balls Sussy"));
            }),
      ),
    );
  }
}
