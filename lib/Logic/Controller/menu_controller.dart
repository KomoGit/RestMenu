import 'package:pocketbase/pocketbase.dart';
import 'package:restmenu/Model/model_menu.dart';

class MenuAPI {
  //Category was not a parameter originally.
  Future<List<MenuItem>> fromRecordsToModels(
    PocketBase pb,
    /*String category*/
  ) async {
    var rawData =
        await pb.collection("menuitem").getFullList(/*filter: category*/);
    List<RecordModel> listOfMenuItem = rawData;
    List<MenuItem> categories = [];
    for (RecordModel model in listOfMenuItem) {
      categories.add(MenuItem.fromModel(model));
    }
    return categories;
  }
}
