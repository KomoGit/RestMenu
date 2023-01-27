import 'package:pocketbase/pocketbase.dart';
import 'package:restmenu/Model/model_category.dart';

class CategoryAPI {
  final PocketBase _pb = PocketBase("http://127.0.0.1:8090");

  Future<Category> fromRecordToModel() async {
    var rawData = await _pb.collection("category").getOne("xstpt1yqyfo6rmv");
    return Category.fromModel(rawData);
  }

  Future<List<Category>> fromRecordsToModels() async {
    var rawData = await _pb.collection("category").getFullList();
    List<RecordModel> listOfCategory = rawData;
    List<Category> categories = [];
    for (RecordModel model in listOfCategory) {
      categories.add(Category.fromModel(model));
    }
    return categories;
  }
}
