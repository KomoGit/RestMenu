import 'package:pocketbase/pocketbase.dart';
import 'package:restmenu/Model/model_menu.dart';

class MenuAPI {
  //DO NOT MODIFY
  Future<List<MenuItem>> fromRecordsToModels(PocketBase pb) async {
    var rawData = await pb.collection("menuitem").getFullList();
    List<RecordModel> listOfMenuItem = rawData;
    List<MenuItem> categories = [];
    for (RecordModel model in listOfMenuItem) {
      categories.add(MenuItem.fromModel(model));
    }
    return categories;
  }
}
