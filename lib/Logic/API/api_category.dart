import 'package:pocketbase/pocketbase.dart';
import 'package:restmenu/Model/model_category.dart';

class CategoryAPI {
  Future<List<Category>> fromRecordsToModels(PocketBase pb) async {
    var rawData = await pb.collection("category").getFullList();
    List<RecordModel> listOfCategory = rawData;
    List<Category> categories = [];
    for (RecordModel model in listOfCategory) {
      categories.add(Category.fromModel(model));
    }
    return categories;
  }
}
