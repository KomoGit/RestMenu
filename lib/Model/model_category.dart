import 'package:pocketbase/pocketbase.dart';

class Category {
  bool active;
  String title;
  String img;
  String imgUrl;

  Category(this.active, this.title, this.img, this.imgUrl);

  static Category fromModel(RecordModel model) {
    bool active = model.getBoolValue('active');
    // print(active);
    String title = model.getStringValue('title');
    // print(title);
    String imgUrl = model.getStringValue('imgUrl');
    // print(imgUrl);
    String img = model.getStringValue('img');
    // print(img);
    return Category(active, title, img, imgUrl);
  }
}
