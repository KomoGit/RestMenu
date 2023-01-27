import 'package:pocketbase/pocketbase.dart';
import 'package:restmenu/Model/model_category.dart';

class MyPocketBase {
  final PocketBase _pb = PocketBase("http://127.0.0.1:8090");

  // Returns a list of record model.....Kinda tricky. How do i process this?
  Future<List<RecordModel>> getAllCategories() async {
    final data = _pb.collection("category").getFullList();
    return data;
  }

  //Same as above my dear. How do we parse this into a model?
  Future<List<RecordModel>> getAllMenuItems() async {
    final data = _pb.collection("menuitem").getFullList();
    return data;
  }

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
