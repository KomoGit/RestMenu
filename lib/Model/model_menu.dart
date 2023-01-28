import 'package:pocketbase/pocketbase.dart';

/*
TODO: We need to add a variable here that will also contain category,
 and perhaps get rid of String img as we don't use it to represent anything.
 */
class MenuItem {
  bool active;
  String title;
  String desc;
  String img;
  String imgUrl;

  double price;

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
