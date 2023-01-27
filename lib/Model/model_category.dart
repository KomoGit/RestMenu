import 'package:pocketbase/pocketbase.dart';

class Category {
  bool active;
  String title;
  String img;
  String imgUrl;

  Category(this.active, this.title, this.img, this.imgUrl);

  static Category fromModel(RecordModel model) {
    bool active = model.getBoolValue('active');
    String title = model.getStringValue('title');
    String imgUrl = model.getStringValue('imgUrl');
    String img = model.getStringValue('img');
    return Category(active, title, img, imgUrl);
  }
}
