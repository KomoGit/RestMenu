import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:restmenu/Logic/API/api_pocketbase.dart';
import 'package:restmenu/Model/model_category.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: unused_field
  final PocketBase _pb = PocketBase("http://127.0.0.1:8090");
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
    final List<Category> cat = await MyPocketBase().fromRecordsToModels();
    lengthOfCategory = cat.length;
    print(lengthOfCategory);
    //final Category cat = await MyPocketBase().fromRecordToModel();
    // final record = await _pb
    //     .collection("category")
    //     .getOne("xstpt1yqyfo6rmv"); //DONT REMOVE ME!
    // title = record.getStringValue("imgUrl");
    //imgUrl = cat.imgUrl;
    //title = cat.title;
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
              return Center(child: Text("Sorry!"));
            }),
      ),
    );
  }
}
