import 'package:pocketbase/pocketbase.dart';
import 'package:restmenu/Model/model_menuitems.dart';

class MenuItemAPI {
  final PocketBase _pb = PocketBase("http://127.0.0.1:8090");

  Future<List<RecordModel>> getAllCategories() async {
    final data = _pb.collection("MenuItem").getFullList();
    return data;
  }

  //Same as above my dear. How do we parse this into a model?
  Future<List<RecordModel>> getAllMenuItems() async {
    final data = _pb.collection("menuitem").getFullList();
    return data;
  }

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
