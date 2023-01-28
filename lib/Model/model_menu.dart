import 'package:pocketbase/pocketbase.dart';

class MenuItem {
  bool active;
  String title;
  String desc;
  String category;
  String imgUrl;
  double price;

  MenuItem(this.active, this.title, this.desc, this.price, this.category,
      this.imgUrl);

  static MenuItem fromModel(RecordModel model) {
    bool active = model.getBoolValue('active');
    String title = model.getStringValue('title');
    String desc = model.getStringValue('desc');
    String imgUrl = model.getStringValue('imgUrl');
    String category = model.getStringValue('category');
    double price = model.getDoubleValue('price');

    return MenuItem(active, title, desc, price, category, imgUrl);
  }
}
