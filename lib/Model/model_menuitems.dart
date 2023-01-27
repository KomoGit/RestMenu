import 'package:pocketbase/pocketbase.dart';

class MenuItem {
  bool active;
  String title;
  String img;
  String imgUrl;

  MenuItem(this.active, this.title, this.img, this.imgUrl);

  static MenuItem fromModel(RecordModel model) {
    bool active = model.getBoolValue('active');
    String title = model.getStringValue('title');
    String imgUrl = model.getStringValue('imgUrl');
    String img = model.getStringValue('img');
    return MenuItem(active, title, img, imgUrl);
  }
}
