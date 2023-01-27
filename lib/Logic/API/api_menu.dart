import 'package:pocketbase/pocketbase.dart';
import 'package:restmenu/Model/model_menu.dart';

class MenuAPI {
  final PocketBase _pb = PocketBase("http://127.0.0.1:8090");

  Future<List<MenuItem>> fromRecordsToModels() async {
    var rawData = await _pb.collection("menuitem").getFullList();
    List<RecordModel> listOfMenuItem = rawData;
    List<MenuItem> categories = [];
    for (RecordModel model in listOfMenuItem) {
      categories.add(MenuItem.fromModel(model));
    }
    return categories;
  }
}
