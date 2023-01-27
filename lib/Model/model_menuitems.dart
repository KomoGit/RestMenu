import 'package:pocketbase/pocketbase.dart';

class MenuItem {
  bool active;
  String title;
  String desc;
  double price;
  String img;
  String imgUrl;

  MenuItem(
      this.active, this.title, this.desc, this.price, this.img, this.imgUrl);

  static MenuItem fromModel(RecordModel model) {
    bool active = model.getBoolValue('active');
    String title = model.getStringValue('title');
    String desc = model.getStringValue('desc');
    String imgUrl = model.getStringValue('imgUrl');
    String img = model.getStringValue('img');
    double price = model.getDoubleValue('price');

    return MenuItem(active, title, desc, price, img, imgUrl);
  }
}
